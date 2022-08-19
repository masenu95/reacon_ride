abstract class ITrackFacade {
  Future<Map<String, dynamic>> getDirections({
    required String origin,
    required String destination,
  });
}
