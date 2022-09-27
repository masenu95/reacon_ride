part of 'track_bloc.dart';

@freezed
class TrackState with _$TrackState {
  const factory TrackState({
    required Position current,
    required String active,
    required String from,
    required String to,
    required List<AutocompletePrediction> fromPrediction,
    required List<AutocompletePrediction> toPrediction,
    required List<Driver> drivers,
    required bool loading,
    required Address fromPlace,
    required Address toPlace,
    required Map<String, dynamic> directions,
    required double distance,
    required double time,
    required double taxPrice,
    required double xxlPrice,
    required double bodaPrice,
    required double bajajPrice,
    required double kirikuuPrice,
    required bool priceLoading,
    required bool requestLoading,
    required String service,
    required bool search,
    required bool searchTo,
    required bool searchFrom,
    required RequestModel tripData,
    required Driver driverData,
    required Option<Either<RequestFailure, RequestModel>> request,
  }) = _TrackState;

  factory TrackState.initial() => TrackState(
        loading: false,
        from: "",
        to: "",
        current: const Position(
          latitude: -6.808777126084612,
          longitude: 39.26077543403486,
          heading: 21,
          timestamp: null,
          accuracy: 12,
          altitude: 12,
          speed: 12,
          speedAccuracy: 12,
        ),
        fromPrediction: [],
        toPrediction: [],
        active: 'from',
        fromPlace: Address(coordinates: Coordinates(0, 0)),
        toPlace: Address(coordinates: Coordinates(0, 0)),
        directions: {},
        bodaPrice: 0,
        bajajPrice: 0,
        kirikuuPrice: 0,
        taxPrice: 0,
        xxlPrice: 0,
        priceLoading: false,
        distance: 0,
        time: 0,
        search: false,
        requestLoading: false,
        service: 'Passanger',
        request: none(),
        searchFrom: false,
        searchTo: false,
        tripData: RequestModel(
          fromLocation: const GeoPoint(0, 0),
          toLocation: const GeoPoint(0, 0),
          userId: "",
          customerName: '',
          customerPhone: '',
          status: '',
          estimatedCost: '',
          actualCost: '',
          driverId: '',
          from: '',
          to: '',
          id: "",
        ),
        driverData: Driver(
          email: '',
          phone: '',
          name: '',
          vehicleColor: '',
          vehicleManufacture: '',
          vehicleNo: '',
          location: const GeoPoint(0, 0),
          token: '',
          vehicleType: '',
          isBooked: false,
          isOnline: false,
        ),
        drivers: [],
      );
}
