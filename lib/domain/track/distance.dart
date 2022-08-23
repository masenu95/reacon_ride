class Distance {
  final double distance;
  final double time;

  Distance({
    required this.distance,
    required this.time,
  });

  factory Distance.fromJson(Map<String, dynamic> data) {
    return Distance(
      distance: double.parse(
        (data["rows"][0]['elements'][0]['distance']['value']).toString(),
      ),
      time: double.parse(
        (data["rows"][0]['elements'][0]['duration']['value']).toString(),
      ),
    );
  }
}
