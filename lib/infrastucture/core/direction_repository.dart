import 'package:dio/dio.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class DirectionsRepository {
  static const String _baseUrl =
      'https://maps.googleapis.com/maps/api/directions/json?';



  Future<String> getAddress({
    required LatLng origin,
  }) async {
    final response = await Dio().get(
        _baseUrl,
        queryParameters: {
        'latlng': '${origin.latitude},${origin.longitude}',
        'key': 'AIzaSyCLVBTXGiIsdiyWUzZOYtbaGw_h-2mn0iI',
        },);
    return response.data['location'].toString();
  }
}
