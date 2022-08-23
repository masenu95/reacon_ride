import 'dart:async';
import 'dart:convert' as convert;

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_geocoder/geocoder.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_place/google_place.dart';
import 'package:http/http.dart' as http;
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
        yield state.copyWith(from: e.name);
        final address = await Geocoder.google(EnvConstant.googleAPiKey)
            .findAddressesFromQuery(e.name);
        yield state.copyWith(
          fromPlace: address[0],
          fromPrediction: [],
        );
      },
      selectedToLocation: (e) async* {
        yield state.copyWith(to: e.name);
        final address = await Geocoder.google(EnvConstant.googleAPiKey)
            .findAddressesFromQuery(e.name);
        yield state.copyWith(
          toPlace: address[0],
          toPrediction: [],
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

        if (kDebugMode) {
          print(res);
        }
      },
    );
  }
}