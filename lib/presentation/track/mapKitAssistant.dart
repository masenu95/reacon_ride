import 'package:maps_toolkit/maps_toolkit.dart';

mixin MapKitAssistant {
  // calculate the heading from one point to another point.
  //rotating the icon based on where it moves.
  static num getMarkerRotation(
      double slat, double slng, double dlat, double dlng) {
    var rot =
        SphericalUtil.computeHeading(LatLng(slat, slng), LatLng(dlat, dlng));

    return rot;
  }
}
