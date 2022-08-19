import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_geocoder/geocoder.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_place/google_place.dart';
import 'package:reacon_customer/infrastucture/core/constant.dart';
import 'dart:convert' as convert;

import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:http/http.dart' as http;

part 'track_bloc.freezed.dart';

part 'track_event.dart';

part 'track_state.dart';

class TrackBloc extends Bloc<TrackEvent, TrackState> {
  TrackBloc() : super(TrackState.initial());
  final GooglePlace _googlePlace = GooglePlace(EnvConstant.googleAPiKey);

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
        yield state.copyWith(loading: true);
        final String url =
            'https://maps.googleapis.com/maps/api/directions/json?origin=${state.fromPlace.coordinates}&destination=${state.toPlace.coordinates}&key=${EnvConstant.googleAPiKey}';

        final response = await http.get(Uri.parse(url));
        final json = convert.jsonDecode(response.body);

        final results = {
          'bounds_ne': json['routes'][0]['bounds']['northeast'],
          'bounds_sw': json['routes'][0]['bounds']['southwest'],
          'start_location': json['routes'][0]['legs'][0]['start_location'],
          'end_location': json['routes'][0]['legs'][0]['end_location'],
          'polyline': json['routes'][0]['overview_polyline']['points'],
          'polyline_decoded': PolylinePoints().decodePolyline(
              json['routes'][0]['overview_polyline']['points'].toString()),
        };
        yield state.copyWith(
          directions: results,
          loading: false,
        );
      },
    );
  }
}
