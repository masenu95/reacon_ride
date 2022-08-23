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
    required bool loading,
    required Address fromPlace,
    required Address toPlace,
    required Map<String, dynamic> directions,
    required double taxPrice,
    required double xxlPrice,
    required double bodaPrice,
    required double bajajPrice,
    required double kirikuuPrice,
    required bool priceLoading,
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
        active: '',
        fromPlace: Address(coordinates: Coordinates(0, 0)),
        toPlace: Address(coordinates: Coordinates(0, 0)),
        directions: {},
        bodaPrice: 0,
        bajajPrice: 0,
        kirikuuPrice: 0,
        taxPrice: 0,
        xxlPrice: 0,
        priceLoading: false,
      );
}
