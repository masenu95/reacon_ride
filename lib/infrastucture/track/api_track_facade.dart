import 'dart:convert';

import 'package:google_maps_flutter_platform_interface/src/types/location.dart';
import 'package:injectable/injectable.dart';
import 'package:reacon_customer/domain/track/distance.dart';
import 'package:reacon_customer/domain/track/i_track_facade.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;
import 'package:reacon_customer/infrastucture/core/constant.dart';

@LazySingleton(as: ITrackFacade)
class ApiTrackFacade implements ITrackFacade {
  @override
  Future<Distance> getDirectionDistance({
    required LatLng origin,
    required LatLng destination,
  }) async {
    Uri url = Uri.parse(
      "https://maps.googleapis.com/maps/api/distancematrix/json?units=imperial&origins=${origin.latitude},${origin.longitude}&destinations=${destination.latitude},${destination.longitude}&key=${EnvConstant.googleAPiKey}",
    );

    final response = await http.get(url);
    print(response.body);
    Map<String, dynamic> distance =
        json.decode(response.body) as Map<String, dynamic>;

    return Distance.fromJson(distance);
  }
}
