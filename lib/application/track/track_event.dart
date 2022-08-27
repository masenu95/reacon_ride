part of 'track_bloc.dart';

@freezed
class TrackEvent with _$TrackEvent {
  const factory TrackEvent.currentLocation() = _CurrentLocation;
  const factory TrackEvent.fromLocationChange(String name) =
      _FromLocationChange;
  const factory TrackEvent.toLocationChange(String name) = _ToLocationChange;
  const factory TrackEvent.selectedFromLocation(String name) =
      _selectedFromLocation;
  const factory TrackEvent.selectedToLocation(String name) =
      _selectedToLocation;
  const factory TrackEvent.getDirection() = _GetDirection;
  const factory TrackEvent.sendRequest() = _SendRequest;
  const factory TrackEvent.getTrip(String tripId) = _GetTrip;
  const factory TrackEvent.getDriver(String driverId) = _GetDriver;
  const factory TrackEvent.tripReceived(DocumentSnapshot data) = _TripReceived;
  const factory TrackEvent.serviceChange(String service) = _ServiceChange;
  const factory TrackEvent.driverReceived(DocumentSnapshot data) =
      _DriverReceived;
}
