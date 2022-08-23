import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_geocoder/geocoder.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_place/google_place.dart';
import 'package:injectable/injectable.dart';
import 'package:reacon_customer/domain/track/i_track_facade.dart';
import 'package:reacon_customer/infrastucture/core/constant.dart';

part 'track_bloc.freezed.dart';
part 'track_event.dart';
part 'track_state.dart';

@injectable
class TrackBloc extends Bloc<TrackEvent, TrackState> {
  TrackBloc(this._facade) : super(TrackState.initial());
  final GooglePlace _googlePlace = GooglePlace(EnvConstant.googleAPiKey);
  final ITrackFacade _facade;
  @override
  Stream<TrackState> mapEventToState(
    TrackEvent event,
  ) async* {
    yield* event.map(
      currentLocation: (e) async* {
        yield state.copyWith(
          loading: true,
        );
        bool serviceEnabled;
        LocationPermission permission;

        // Test if location services are enabled.
        serviceEnabled = await Geolocator.isLocationServiceEnabled();
        if (!serviceEnabled) {}

        permission = await Geolocator.checkPermission();
        if (permission == LocationPermission.denied) {
          permission = await Geolocator.requestPermission();
          if (permission == LocationPermission.denied) {}
        }

        if (permission == LocationPermission.deniedForever) {
          // Permissions are denied forever, handle appropriately.

        }

        Position position = await Geolocator.getCurrentPosition();

        yield state.copyWith(
          current: position,
          loading: false,
        );
      },
      fromLocationChange: (e) async* {
        yield state.copyWith(from: e.name);
        if (e.name.isNotEmpty) {
          final result = await _googlePlace.queryAutocomplete.get(e.name);

          if (result != null && result.predictions != null) {
            yield state.copyWith(
                fromPrediction: result.predictions!, active: "from");
          } else {
            yield state.copyWith(
              fromPrediction: [],
              active: "",
            );
          }
        }
      },
      toLocationChange: (e) async* {
        yield state.copyWith(to: e.name);
        if (e.name.isNotEmpty) {
          final result = await _googlePlace.queryAutocomplete.get(e.name);
          if (result != null && result.predictions != null) {
            yield state.copyWith(
              toPrediction: result.predictions!,
              active: "to",
            );
          } else {
            yield state.copyWith(
              toPrediction: [],
              active: "",
            );
          }
        }
      },
      selectedFromLocation: (e) async* {
        bool search = false;
        yield state.copyWith(from: e.name);
        final address = await Geocoder.google(EnvConstant.googleAPiKey)
            .findAddressesFromQuery(e.name);
        if (address[0].coordinates.latitude != 0 &&
            state.toPlace.coordinates.latitude != 0) {
          search = true;
        }

        yield state.copyWith(
          fromPlace: address[0],
          fromPrediction: [],
          search: search,
        );
      },
      selectedToLocation: (e) async* {
        bool search = false;

        yield state.copyWith(to: e.name);
        final address = await Geocoder.google(EnvConstant.googleAPiKey)
            .findAddressesFromQuery(e.name);
        if (state.fromPlace.coordinates.latitude != 0 &&
            address[0].coordinates.latitude != 0) {
          search = true;
        }

        yield state.copyWith(
          toPlace: address[0],
          toPrediction: [],
          search: search,
        );
      },
      getDirection: (e) async* {
        yield state.copyWith(
          loading: false,
        );
        final res = await _facade.getDirectionDistance(
          origin: LatLng(
            state.fromPlace.coordinates.latitude!,
            state.fromPlace.coordinates.longitude!,
          ),
          destination: LatLng(
            state.toPlace.coordinates.latitude!,
            state.toPlace.coordinates.longitude!,
          ),
        );

        final double distanceKm = res.distance / 1000;
        final double minutes = res.time / 60;

        double price = (distanceKm * 900) + (minutes * 100);

        yield state.copyWith(
          taxPrice: price,
          bodaPrice: price,
          kirikuuPrice: price,
          bajajPrice: price,
          distance: distanceKm,
        );

        if (kDebugMode) {
          print(res);
        }
      },
    );
  }
}
