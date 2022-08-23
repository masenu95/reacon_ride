import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:reacon_customer/domain/track/distance.dart';

abstract class ITrackFacade {
  Future<Distance> getDirectionDistance({
    required LatLng origin,
    required LatLng destination,
  });
}
