// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'track_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TrackEventTearOff {
  const _$TrackEventTearOff();

  _CurrentLocation currentLocation() {
    return const _CurrentLocation();
  }

  _FromLocationChange fromLocationChange(String name) {
    return _FromLocationChange(
      name,
    );
  }

  _ToLocationChange toLocationChange(String name) {
    return _ToLocationChange(
      name,
    );
  }

  _selectedFromLocation selectedFromLocation(String name) {
    return _selectedFromLocation(
      name,
    );
  }

  _selectedToLocation selectedToLocation(String name) {
    return _selectedToLocation(
      name,
    );
  }

  _GetDirection getDirection() {
    return const _GetDirection();
  }

  _SendRequest sendRequest() {
    return const _SendRequest();
  }

  _GetTrip getTrip(String tripId) {
    return _GetTrip(
      tripId,
    );
  }

  _ServiceChange serviceChange(String service) {
    return _ServiceChange(
      service,
    );
  }
}

/// @nodoc
const $TrackEvent = _$TrackEventTearOff();

/// @nodoc
mixin _$TrackEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() currentLocation,
    required TResult Function(String name) fromLocationChange,
    required TResult Function(String name) toLocationChange,
    required TResult Function(String name) selectedFromLocation,
    required TResult Function(String name) selectedToLocation,
    required TResult Function() getDirection,
    required TResult Function() sendRequest,
    required TResult Function(String tripId) getTrip,
    required TResult Function(String service) serviceChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? currentLocation,
    TResult Function(String name)? fromLocationChange,
    TResult Function(String name)? toLocationChange,
    TResult Function(String name)? selectedFromLocation,
    TResult Function(String name)? selectedToLocation,
    TResult Function()? getDirection,
    TResult Function()? sendRequest,
    TResult Function(String tripId)? getTrip,
    TResult Function(String service)? serviceChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? currentLocation,
    TResult Function(String name)? fromLocationChange,
    TResult Function(String name)? toLocationChange,
    TResult Function(String name)? selectedFromLocation,
    TResult Function(String name)? selectedToLocation,
    TResult Function()? getDirection,
    TResult Function()? sendRequest,
    TResult Function(String tripId)? getTrip,
    TResult Function(String service)? serviceChange,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CurrentLocation value) currentLocation,
    required TResult Function(_FromLocationChange value) fromLocationChange,
    required TResult Function(_ToLocationChange value) toLocationChange,
    required TResult Function(_selectedFromLocation value) selectedFromLocation,
    required TResult Function(_selectedToLocation value) selectedToLocation,
    required TResult Function(_GetDirection value) getDirection,
    required TResult Function(_SendRequest value) sendRequest,
    required TResult Function(_GetTrip value) getTrip,
    required TResult Function(_ServiceChange value) serviceChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CurrentLocation value)? currentLocation,
    TResult Function(_FromLocationChange value)? fromLocationChange,
    TResult Function(_ToLocationChange value)? toLocationChange,
    TResult Function(_selectedFromLocation value)? selectedFromLocation,
    TResult Function(_selectedToLocation value)? selectedToLocation,
    TResult Function(_GetDirection value)? getDirection,
    TResult Function(_SendRequest value)? sendRequest,
    TResult Function(_GetTrip value)? getTrip,
    TResult Function(_ServiceChange value)? serviceChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CurrentLocation value)? currentLocation,
    TResult Function(_FromLocationChange value)? fromLocationChange,
    TResult Function(_ToLocationChange value)? toLocationChange,
    TResult Function(_selectedFromLocation value)? selectedFromLocation,
    TResult Function(_selectedToLocation value)? selectedToLocation,
    TResult Function(_GetDirection value)? getDirection,
    TResult Function(_SendRequest value)? sendRequest,
    TResult Function(_GetTrip value)? getTrip,
    TResult Function(_ServiceChange value)? serviceChange,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackEventCopyWith<$Res> {
  factory $TrackEventCopyWith(
          TrackEvent value, $Res Function(TrackEvent) then) =
      _$TrackEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$TrackEventCopyWithImpl<$Res> implements $TrackEventCopyWith<$Res> {
  _$TrackEventCopyWithImpl(this._value, this._then);

  final TrackEvent _value;
  // ignore: unused_field
  final $Res Function(TrackEvent) _then;
}

/// @nodoc
abstract class _$CurrentLocationCopyWith<$Res> {
  factory _$CurrentLocationCopyWith(
          _CurrentLocation value, $Res Function(_CurrentLocation) then) =
      __$CurrentLocationCopyWithImpl<$Res>;
}

/// @nodoc
class __$CurrentLocationCopyWithImpl<$Res>
    extends _$TrackEventCopyWithImpl<$Res>
    implements _$CurrentLocationCopyWith<$Res> {
  __$CurrentLocationCopyWithImpl(
      _CurrentLocation _value, $Res Function(_CurrentLocation) _then)
      : super(_value, (v) => _then(v as _CurrentLocation));

  @override
  _CurrentLocation get _value => super._value as _CurrentLocation;
}

/// @nodoc

class _$_CurrentLocation
    with DiagnosticableTreeMixin
    implements _CurrentLocation {
  const _$_CurrentLocation();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TrackEvent.currentLocation()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'TrackEvent.currentLocation'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _CurrentLocation);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() currentLocation,
    required TResult Function(String name) fromLocationChange,
    required TResult Function(String name) toLocationChange,
    required TResult Function(String name) selectedFromLocation,
    required TResult Function(String name) selectedToLocation,
    required TResult Function() getDirection,
    required TResult Function() sendRequest,
    required TResult Function(String tripId) getTrip,
    required TResult Function(String service) serviceChange,
  }) {
    return currentLocation();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? currentLocation,
    TResult Function(String name)? fromLocationChange,
    TResult Function(String name)? toLocationChange,
    TResult Function(String name)? selectedFromLocation,
    TResult Function(String name)? selectedToLocation,
    TResult Function()? getDirection,
    TResult Function()? sendRequest,
    TResult Function(String tripId)? getTrip,
    TResult Function(String service)? serviceChange,
  }) {
    return currentLocation?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? currentLocation,
    TResult Function(String name)? fromLocationChange,
    TResult Function(String name)? toLocationChange,
    TResult Function(String name)? selectedFromLocation,
    TResult Function(String name)? selectedToLocation,
    TResult Function()? getDirection,
    TResult Function()? sendRequest,
    TResult Function(String tripId)? getTrip,
    TResult Function(String service)? serviceChange,
    required TResult orElse(),
  }) {
    if (currentLocation != null) {
      return currentLocation();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CurrentLocation value) currentLocation,
    required TResult Function(_FromLocationChange value) fromLocationChange,
    required TResult Function(_ToLocationChange value) toLocationChange,
    required TResult Function(_selectedFromLocation value) selectedFromLocation,
    required TResult Function(_selectedToLocation value) selectedToLocation,
    required TResult Function(_GetDirection value) getDirection,
    required TResult Function(_SendRequest value) sendRequest,
    required TResult Function(_GetTrip value) getTrip,
    required TResult Function(_ServiceChange value) serviceChange,
  }) {
    return currentLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CurrentLocation value)? currentLocation,
    TResult Function(_FromLocationChange value)? fromLocationChange,
    TResult Function(_ToLocationChange value)? toLocationChange,
    TResult Function(_selectedFromLocation value)? selectedFromLocation,
    TResult Function(_selectedToLocation value)? selectedToLocation,
    TResult Function(_GetDirection value)? getDirection,
    TResult Function(_SendRequest value)? sendRequest,
    TResult Function(_GetTrip value)? getTrip,
    TResult Function(_ServiceChange value)? serviceChange,
  }) {
    return currentLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CurrentLocation value)? currentLocation,
    TResult Function(_FromLocationChange value)? fromLocationChange,
    TResult Function(_ToLocationChange value)? toLocationChange,
    TResult Function(_selectedFromLocation value)? selectedFromLocation,
    TResult Function(_selectedToLocation value)? selectedToLocation,
    TResult Function(_GetDirection value)? getDirection,
    TResult Function(_SendRequest value)? sendRequest,
    TResult Function(_GetTrip value)? getTrip,
    TResult Function(_ServiceChange value)? serviceChange,
    required TResult orElse(),
  }) {
    if (currentLocation != null) {
      return currentLocation(this);
    }
    return orElse();
  }
}

abstract class _CurrentLocation implements TrackEvent {
  const factory _CurrentLocation() = _$_CurrentLocation;
}

/// @nodoc
abstract class _$FromLocationChangeCopyWith<$Res> {
  factory _$FromLocationChangeCopyWith(
          _FromLocationChange value, $Res Function(_FromLocationChange) then) =
      __$FromLocationChangeCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class __$FromLocationChangeCopyWithImpl<$Res>
    extends _$TrackEventCopyWithImpl<$Res>
    implements _$FromLocationChangeCopyWith<$Res> {
  __$FromLocationChangeCopyWithImpl(
      _FromLocationChange _value, $Res Function(_FromLocationChange) _then)
      : super(_value, (v) => _then(v as _FromLocationChange));

  @override
  _FromLocationChange get _value => super._value as _FromLocationChange;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_FromLocationChange(
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FromLocationChange
    with DiagnosticableTreeMixin
    implements _FromLocationChange {
  const _$_FromLocationChange(this.name);

  @override
  final String name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TrackEvent.fromLocationChange(name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TrackEvent.fromLocationChange'))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FromLocationChange &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$FromLocationChangeCopyWith<_FromLocationChange> get copyWith =>
      __$FromLocationChangeCopyWithImpl<_FromLocationChange>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() currentLocation,
    required TResult Function(String name) fromLocationChange,
    required TResult Function(String name) toLocationChange,
    required TResult Function(String name) selectedFromLocation,
    required TResult Function(String name) selectedToLocation,
    required TResult Function() getDirection,
    required TResult Function() sendRequest,
    required TResult Function(String tripId) getTrip,
    required TResult Function(String service) serviceChange,
  }) {
    return fromLocationChange(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? currentLocation,
    TResult Function(String name)? fromLocationChange,
    TResult Function(String name)? toLocationChange,
    TResult Function(String name)? selectedFromLocation,
    TResult Function(String name)? selectedToLocation,
    TResult Function()? getDirection,
    TResult Function()? sendRequest,
    TResult Function(String tripId)? getTrip,
    TResult Function(String service)? serviceChange,
  }) {
    return fromLocationChange?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? currentLocation,
    TResult Function(String name)? fromLocationChange,
    TResult Function(String name)? toLocationChange,
    TResult Function(String name)? selectedFromLocation,
    TResult Function(String name)? selectedToLocation,
    TResult Function()? getDirection,
    TResult Function()? sendRequest,
    TResult Function(String tripId)? getTrip,
    TResult Function(String service)? serviceChange,
    required TResult orElse(),
  }) {
    if (fromLocationChange != null) {
      return fromLocationChange(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CurrentLocation value) currentLocation,
    required TResult Function(_FromLocationChange value) fromLocationChange,
    required TResult Function(_ToLocationChange value) toLocationChange,
    required TResult Function(_selectedFromLocation value) selectedFromLocation,
    required TResult Function(_selectedToLocation value) selectedToLocation,
    required TResult Function(_GetDirection value) getDirection,
    required TResult Function(_SendRequest value) sendRequest,
    required TResult Function(_GetTrip value) getTrip,
    required TResult Function(_ServiceChange value) serviceChange,
  }) {
    return fromLocationChange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CurrentLocation value)? currentLocation,
    TResult Function(_FromLocationChange value)? fromLocationChange,
    TResult Function(_ToLocationChange value)? toLocationChange,
    TResult Function(_selectedFromLocation value)? selectedFromLocation,
    TResult Function(_selectedToLocation value)? selectedToLocation,
    TResult Function(_GetDirection value)? getDirection,
    TResult Function(_SendRequest value)? sendRequest,
    TResult Function(_GetTrip value)? getTrip,
    TResult Function(_ServiceChange value)? serviceChange,
  }) {
    return fromLocationChange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CurrentLocation value)? currentLocation,
    TResult Function(_FromLocationChange value)? fromLocationChange,
    TResult Function(_ToLocationChange value)? toLocationChange,
    TResult Function(_selectedFromLocation value)? selectedFromLocation,
    TResult Function(_selectedToLocation value)? selectedToLocation,
    TResult Function(_GetDirection value)? getDirection,
    TResult Function(_SendRequest value)? sendRequest,
    TResult Function(_GetTrip value)? getTrip,
    TResult Function(_ServiceChange value)? serviceChange,
    required TResult orElse(),
  }) {
    if (fromLocationChange != null) {
      return fromLocationChange(this);
    }
    return orElse();
  }
}

abstract class _FromLocationChange implements TrackEvent {
  const factory _FromLocationChange(String name) = _$_FromLocationChange;

  String get name => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FromLocationChangeCopyWith<_FromLocationChange> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ToLocationChangeCopyWith<$Res> {
  factory _$ToLocationChangeCopyWith(
          _ToLocationChange value, $Res Function(_ToLocationChange) then) =
      __$ToLocationChangeCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class __$ToLocationChangeCopyWithImpl<$Res>
    extends _$TrackEventCopyWithImpl<$Res>
    implements _$ToLocationChangeCopyWith<$Res> {
  __$ToLocationChangeCopyWithImpl(
      _ToLocationChange _value, $Res Function(_ToLocationChange) _then)
      : super(_value, (v) => _then(v as _ToLocationChange));

  @override
  _ToLocationChange get _value => super._value as _ToLocationChange;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_ToLocationChange(
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ToLocationChange
    with DiagnosticableTreeMixin
    implements _ToLocationChange {
  const _$_ToLocationChange(this.name);

  @override
  final String name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TrackEvent.toLocationChange(name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TrackEvent.toLocationChange'))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ToLocationChange &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$ToLocationChangeCopyWith<_ToLocationChange> get copyWith =>
      __$ToLocationChangeCopyWithImpl<_ToLocationChange>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() currentLocation,
    required TResult Function(String name) fromLocationChange,
    required TResult Function(String name) toLocationChange,
    required TResult Function(String name) selectedFromLocation,
    required TResult Function(String name) selectedToLocation,
    required TResult Function() getDirection,
    required TResult Function() sendRequest,
    required TResult Function(String tripId) getTrip,
    required TResult Function(String service) serviceChange,
  }) {
    return toLocationChange(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? currentLocation,
    TResult Function(String name)? fromLocationChange,
    TResult Function(String name)? toLocationChange,
    TResult Function(String name)? selectedFromLocation,
    TResult Function(String name)? selectedToLocation,
    TResult Function()? getDirection,
    TResult Function()? sendRequest,
    TResult Function(String tripId)? getTrip,
    TResult Function(String service)? serviceChange,
  }) {
    return toLocationChange?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? currentLocation,
    TResult Function(String name)? fromLocationChange,
    TResult Function(String name)? toLocationChange,
    TResult Function(String name)? selectedFromLocation,
    TResult Function(String name)? selectedToLocation,
    TResult Function()? getDirection,
    TResult Function()? sendRequest,
    TResult Function(String tripId)? getTrip,
    TResult Function(String service)? serviceChange,
    required TResult orElse(),
  }) {
    if (toLocationChange != null) {
      return toLocationChange(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CurrentLocation value) currentLocation,
    required TResult Function(_FromLocationChange value) fromLocationChange,
    required TResult Function(_ToLocationChange value) toLocationChange,
    required TResult Function(_selectedFromLocation value) selectedFromLocation,
    required TResult Function(_selectedToLocation value) selectedToLocation,
    required TResult Function(_GetDirection value) getDirection,
    required TResult Function(_SendRequest value) sendRequest,
    required TResult Function(_GetTrip value) getTrip,
    required TResult Function(_ServiceChange value) serviceChange,
  }) {
    return toLocationChange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CurrentLocation value)? currentLocation,
    TResult Function(_FromLocationChange value)? fromLocationChange,
    TResult Function(_ToLocationChange value)? toLocationChange,
    TResult Function(_selectedFromLocation value)? selectedFromLocation,
    TResult Function(_selectedToLocation value)? selectedToLocation,
    TResult Function(_GetDirection value)? getDirection,
    TResult Function(_SendRequest value)? sendRequest,
    TResult Function(_GetTrip value)? getTrip,
    TResult Function(_ServiceChange value)? serviceChange,
  }) {
    return toLocationChange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CurrentLocation value)? currentLocation,
    TResult Function(_FromLocationChange value)? fromLocationChange,
    TResult Function(_ToLocationChange value)? toLocationChange,
    TResult Function(_selectedFromLocation value)? selectedFromLocation,
    TResult Function(_selectedToLocation value)? selectedToLocation,
    TResult Function(_GetDirection value)? getDirection,
    TResult Function(_SendRequest value)? sendRequest,
    TResult Function(_GetTrip value)? getTrip,
    TResult Function(_ServiceChange value)? serviceChange,
    required TResult orElse(),
  }) {
    if (toLocationChange != null) {
      return toLocationChange(this);
    }
    return orElse();
  }
}

abstract class _ToLocationChange implements TrackEvent {
  const factory _ToLocationChange(String name) = _$_ToLocationChange;

  String get name => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ToLocationChangeCopyWith<_ToLocationChange> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$selectedFromLocationCopyWith<$Res> {
  factory _$selectedFromLocationCopyWith(_selectedFromLocation value,
          $Res Function(_selectedFromLocation) then) =
      __$selectedFromLocationCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class __$selectedFromLocationCopyWithImpl<$Res>
    extends _$TrackEventCopyWithImpl<$Res>
    implements _$selectedFromLocationCopyWith<$Res> {
  __$selectedFromLocationCopyWithImpl(
      _selectedFromLocation _value, $Res Function(_selectedFromLocation) _then)
      : super(_value, (v) => _then(v as _selectedFromLocation));

  @override
  _selectedFromLocation get _value => super._value as _selectedFromLocation;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_selectedFromLocation(
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_selectedFromLocation
    with DiagnosticableTreeMixin
    implements _selectedFromLocation {
  const _$_selectedFromLocation(this.name);

  @override
  final String name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TrackEvent.selectedFromLocation(name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TrackEvent.selectedFromLocation'))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _selectedFromLocation &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$selectedFromLocationCopyWith<_selectedFromLocation> get copyWith =>
      __$selectedFromLocationCopyWithImpl<_selectedFromLocation>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() currentLocation,
    required TResult Function(String name) fromLocationChange,
    required TResult Function(String name) toLocationChange,
    required TResult Function(String name) selectedFromLocation,
    required TResult Function(String name) selectedToLocation,
    required TResult Function() getDirection,
    required TResult Function() sendRequest,
    required TResult Function(String tripId) getTrip,
    required TResult Function(String service) serviceChange,
  }) {
    return selectedFromLocation(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? currentLocation,
    TResult Function(String name)? fromLocationChange,
    TResult Function(String name)? toLocationChange,
    TResult Function(String name)? selectedFromLocation,
    TResult Function(String name)? selectedToLocation,
    TResult Function()? getDirection,
    TResult Function()? sendRequest,
    TResult Function(String tripId)? getTrip,
    TResult Function(String service)? serviceChange,
  }) {
    return selectedFromLocation?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? currentLocation,
    TResult Function(String name)? fromLocationChange,
    TResult Function(String name)? toLocationChange,
    TResult Function(String name)? selectedFromLocation,
    TResult Function(String name)? selectedToLocation,
    TResult Function()? getDirection,
    TResult Function()? sendRequest,
    TResult Function(String tripId)? getTrip,
    TResult Function(String service)? serviceChange,
    required TResult orElse(),
  }) {
    if (selectedFromLocation != null) {
      return selectedFromLocation(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CurrentLocation value) currentLocation,
    required TResult Function(_FromLocationChange value) fromLocationChange,
    required TResult Function(_ToLocationChange value) toLocationChange,
    required TResult Function(_selectedFromLocation value) selectedFromLocation,
    required TResult Function(_selectedToLocation value) selectedToLocation,
    required TResult Function(_GetDirection value) getDirection,
    required TResult Function(_SendRequest value) sendRequest,
    required TResult Function(_GetTrip value) getTrip,
    required TResult Function(_ServiceChange value) serviceChange,
  }) {
    return selectedFromLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CurrentLocation value)? currentLocation,
    TResult Function(_FromLocationChange value)? fromLocationChange,
    TResult Function(_ToLocationChange value)? toLocationChange,
    TResult Function(_selectedFromLocation value)? selectedFromLocation,
    TResult Function(_selectedToLocation value)? selectedToLocation,
    TResult Function(_GetDirection value)? getDirection,
    TResult Function(_SendRequest value)? sendRequest,
    TResult Function(_GetTrip value)? getTrip,
    TResult Function(_ServiceChange value)? serviceChange,
  }) {
    return selectedFromLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CurrentLocation value)? currentLocation,
    TResult Function(_FromLocationChange value)? fromLocationChange,
    TResult Function(_ToLocationChange value)? toLocationChange,
    TResult Function(_selectedFromLocation value)? selectedFromLocation,
    TResult Function(_selectedToLocation value)? selectedToLocation,
    TResult Function(_GetDirection value)? getDirection,
    TResult Function(_SendRequest value)? sendRequest,
    TResult Function(_GetTrip value)? getTrip,
    TResult Function(_ServiceChange value)? serviceChange,
    required TResult orElse(),
  }) {
    if (selectedFromLocation != null) {
      return selectedFromLocation(this);
    }
    return orElse();
  }
}

abstract class _selectedFromLocation implements TrackEvent {
  const factory _selectedFromLocation(String name) = _$_selectedFromLocation;

  String get name => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$selectedFromLocationCopyWith<_selectedFromLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$selectedToLocationCopyWith<$Res> {
  factory _$selectedToLocationCopyWith(
          _selectedToLocation value, $Res Function(_selectedToLocation) then) =
      __$selectedToLocationCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class __$selectedToLocationCopyWithImpl<$Res>
    extends _$TrackEventCopyWithImpl<$Res>
    implements _$selectedToLocationCopyWith<$Res> {
  __$selectedToLocationCopyWithImpl(
      _selectedToLocation _value, $Res Function(_selectedToLocation) _then)
      : super(_value, (v) => _then(v as _selectedToLocation));

  @override
  _selectedToLocation get _value => super._value as _selectedToLocation;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_selectedToLocation(
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_selectedToLocation
    with DiagnosticableTreeMixin
    implements _selectedToLocation {
  const _$_selectedToLocation(this.name);

  @override
  final String name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TrackEvent.selectedToLocation(name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TrackEvent.selectedToLocation'))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _selectedToLocation &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$selectedToLocationCopyWith<_selectedToLocation> get copyWith =>
      __$selectedToLocationCopyWithImpl<_selectedToLocation>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() currentLocation,
    required TResult Function(String name) fromLocationChange,
    required TResult Function(String name) toLocationChange,
    required TResult Function(String name) selectedFromLocation,
    required TResult Function(String name) selectedToLocation,
    required TResult Function() getDirection,
    required TResult Function() sendRequest,
    required TResult Function(String tripId) getTrip,
    required TResult Function(String service) serviceChange,
  }) {
    return selectedToLocation(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? currentLocation,
    TResult Function(String name)? fromLocationChange,
    TResult Function(String name)? toLocationChange,
    TResult Function(String name)? selectedFromLocation,
    TResult Function(String name)? selectedToLocation,
    TResult Function()? getDirection,
    TResult Function()? sendRequest,
    TResult Function(String tripId)? getTrip,
    TResult Function(String service)? serviceChange,
  }) {
    return selectedToLocation?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? currentLocation,
    TResult Function(String name)? fromLocationChange,
    TResult Function(String name)? toLocationChange,
    TResult Function(String name)? selectedFromLocation,
    TResult Function(String name)? selectedToLocation,
    TResult Function()? getDirection,
    TResult Function()? sendRequest,
    TResult Function(String tripId)? getTrip,
    TResult Function(String service)? serviceChange,
    required TResult orElse(),
  }) {
    if (selectedToLocation != null) {
      return selectedToLocation(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CurrentLocation value) currentLocation,
    required TResult Function(_FromLocationChange value) fromLocationChange,
    required TResult Function(_ToLocationChange value) toLocationChange,
    required TResult Function(_selectedFromLocation value) selectedFromLocation,
    required TResult Function(_selectedToLocation value) selectedToLocation,
    required TResult Function(_GetDirection value) getDirection,
    required TResult Function(_SendRequest value) sendRequest,
    required TResult Function(_GetTrip value) getTrip,
    required TResult Function(_ServiceChange value) serviceChange,
  }) {
    return selectedToLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CurrentLocation value)? currentLocation,
    TResult Function(_FromLocationChange value)? fromLocationChange,
    TResult Function(_ToLocationChange value)? toLocationChange,
    TResult Function(_selectedFromLocation value)? selectedFromLocation,
    TResult Function(_selectedToLocation value)? selectedToLocation,
    TResult Function(_GetDirection value)? getDirection,
    TResult Function(_SendRequest value)? sendRequest,
    TResult Function(_GetTrip value)? getTrip,
    TResult Function(_ServiceChange value)? serviceChange,
  }) {
    return selectedToLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CurrentLocation value)? currentLocation,
    TResult Function(_FromLocationChange value)? fromLocationChange,
    TResult Function(_ToLocationChange value)? toLocationChange,
    TResult Function(_selectedFromLocation value)? selectedFromLocation,
    TResult Function(_selectedToLocation value)? selectedToLocation,
    TResult Function(_GetDirection value)? getDirection,
    TResult Function(_SendRequest value)? sendRequest,
    TResult Function(_GetTrip value)? getTrip,
    TResult Function(_ServiceChange value)? serviceChange,
    required TResult orElse(),
  }) {
    if (selectedToLocation != null) {
      return selectedToLocation(this);
    }
    return orElse();
  }
}

abstract class _selectedToLocation implements TrackEvent {
  const factory _selectedToLocation(String name) = _$_selectedToLocation;

  String get name => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$selectedToLocationCopyWith<_selectedToLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetDirectionCopyWith<$Res> {
  factory _$GetDirectionCopyWith(
          _GetDirection value, $Res Function(_GetDirection) then) =
      __$GetDirectionCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetDirectionCopyWithImpl<$Res> extends _$TrackEventCopyWithImpl<$Res>
    implements _$GetDirectionCopyWith<$Res> {
  __$GetDirectionCopyWithImpl(
      _GetDirection _value, $Res Function(_GetDirection) _then)
      : super(_value, (v) => _then(v as _GetDirection));

  @override
  _GetDirection get _value => super._value as _GetDirection;
}

/// @nodoc

class _$_GetDirection with DiagnosticableTreeMixin implements _GetDirection {
  const _$_GetDirection();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TrackEvent.getDirection()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'TrackEvent.getDirection'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GetDirection);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() currentLocation,
    required TResult Function(String name) fromLocationChange,
    required TResult Function(String name) toLocationChange,
    required TResult Function(String name) selectedFromLocation,
    required TResult Function(String name) selectedToLocation,
    required TResult Function() getDirection,
    required TResult Function() sendRequest,
    required TResult Function(String tripId) getTrip,
    required TResult Function(String service) serviceChange,
  }) {
    return getDirection();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? currentLocation,
    TResult Function(String name)? fromLocationChange,
    TResult Function(String name)? toLocationChange,
    TResult Function(String name)? selectedFromLocation,
    TResult Function(String name)? selectedToLocation,
    TResult Function()? getDirection,
    TResult Function()? sendRequest,
    TResult Function(String tripId)? getTrip,
    TResult Function(String service)? serviceChange,
  }) {
    return getDirection?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? currentLocation,
    TResult Function(String name)? fromLocationChange,
    TResult Function(String name)? toLocationChange,
    TResult Function(String name)? selectedFromLocation,
    TResult Function(String name)? selectedToLocation,
    TResult Function()? getDirection,
    TResult Function()? sendRequest,
    TResult Function(String tripId)? getTrip,
    TResult Function(String service)? serviceChange,
    required TResult orElse(),
  }) {
    if (getDirection != null) {
      return getDirection();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CurrentLocation value) currentLocation,
    required TResult Function(_FromLocationChange value) fromLocationChange,
    required TResult Function(_ToLocationChange value) toLocationChange,
    required TResult Function(_selectedFromLocation value) selectedFromLocation,
    required TResult Function(_selectedToLocation value) selectedToLocation,
    required TResult Function(_GetDirection value) getDirection,
    required TResult Function(_SendRequest value) sendRequest,
    required TResult Function(_GetTrip value) getTrip,
    required TResult Function(_ServiceChange value) serviceChange,
  }) {
    return getDirection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CurrentLocation value)? currentLocation,
    TResult Function(_FromLocationChange value)? fromLocationChange,
    TResult Function(_ToLocationChange value)? toLocationChange,
    TResult Function(_selectedFromLocation value)? selectedFromLocation,
    TResult Function(_selectedToLocation value)? selectedToLocation,
    TResult Function(_GetDirection value)? getDirection,
    TResult Function(_SendRequest value)? sendRequest,
    TResult Function(_GetTrip value)? getTrip,
    TResult Function(_ServiceChange value)? serviceChange,
  }) {
    return getDirection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CurrentLocation value)? currentLocation,
    TResult Function(_FromLocationChange value)? fromLocationChange,
    TResult Function(_ToLocationChange value)? toLocationChange,
    TResult Function(_selectedFromLocation value)? selectedFromLocation,
    TResult Function(_selectedToLocation value)? selectedToLocation,
    TResult Function(_GetDirection value)? getDirection,
    TResult Function(_SendRequest value)? sendRequest,
    TResult Function(_GetTrip value)? getTrip,
    TResult Function(_ServiceChange value)? serviceChange,
    required TResult orElse(),
  }) {
    if (getDirection != null) {
      return getDirection(this);
    }
    return orElse();
  }
}

abstract class _GetDirection implements TrackEvent {
  const factory _GetDirection() = _$_GetDirection;
}

/// @nodoc
abstract class _$SendRequestCopyWith<$Res> {
  factory _$SendRequestCopyWith(
          _SendRequest value, $Res Function(_SendRequest) then) =
      __$SendRequestCopyWithImpl<$Res>;
}

/// @nodoc
class __$SendRequestCopyWithImpl<$Res> extends _$TrackEventCopyWithImpl<$Res>
    implements _$SendRequestCopyWith<$Res> {
  __$SendRequestCopyWithImpl(
      _SendRequest _value, $Res Function(_SendRequest) _then)
      : super(_value, (v) => _then(v as _SendRequest));

  @override
  _SendRequest get _value => super._value as _SendRequest;
}

/// @nodoc

class _$_SendRequest with DiagnosticableTreeMixin implements _SendRequest {
  const _$_SendRequest();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TrackEvent.sendRequest()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'TrackEvent.sendRequest'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SendRequest);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() currentLocation,
    required TResult Function(String name) fromLocationChange,
    required TResult Function(String name) toLocationChange,
    required TResult Function(String name) selectedFromLocation,
    required TResult Function(String name) selectedToLocation,
    required TResult Function() getDirection,
    required TResult Function() sendRequest,
    required TResult Function(String tripId) getTrip,
    required TResult Function(String service) serviceChange,
  }) {
    return sendRequest();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? currentLocation,
    TResult Function(String name)? fromLocationChange,
    TResult Function(String name)? toLocationChange,
    TResult Function(String name)? selectedFromLocation,
    TResult Function(String name)? selectedToLocation,
    TResult Function()? getDirection,
    TResult Function()? sendRequest,
    TResult Function(String tripId)? getTrip,
    TResult Function(String service)? serviceChange,
  }) {
    return sendRequest?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? currentLocation,
    TResult Function(String name)? fromLocationChange,
    TResult Function(String name)? toLocationChange,
    TResult Function(String name)? selectedFromLocation,
    TResult Function(String name)? selectedToLocation,
    TResult Function()? getDirection,
    TResult Function()? sendRequest,
    TResult Function(String tripId)? getTrip,
    TResult Function(String service)? serviceChange,
    required TResult orElse(),
  }) {
    if (sendRequest != null) {
      return sendRequest();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CurrentLocation value) currentLocation,
    required TResult Function(_FromLocationChange value) fromLocationChange,
    required TResult Function(_ToLocationChange value) toLocationChange,
    required TResult Function(_selectedFromLocation value) selectedFromLocation,
    required TResult Function(_selectedToLocation value) selectedToLocation,
    required TResult Function(_GetDirection value) getDirection,
    required TResult Function(_SendRequest value) sendRequest,
    required TResult Function(_GetTrip value) getTrip,
    required TResult Function(_ServiceChange value) serviceChange,
  }) {
    return sendRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CurrentLocation value)? currentLocation,
    TResult Function(_FromLocationChange value)? fromLocationChange,
    TResult Function(_ToLocationChange value)? toLocationChange,
    TResult Function(_selectedFromLocation value)? selectedFromLocation,
    TResult Function(_selectedToLocation value)? selectedToLocation,
    TResult Function(_GetDirection value)? getDirection,
    TResult Function(_SendRequest value)? sendRequest,
    TResult Function(_GetTrip value)? getTrip,
    TResult Function(_ServiceChange value)? serviceChange,
  }) {
    return sendRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CurrentLocation value)? currentLocation,
    TResult Function(_FromLocationChange value)? fromLocationChange,
    TResult Function(_ToLocationChange value)? toLocationChange,
    TResult Function(_selectedFromLocation value)? selectedFromLocation,
    TResult Function(_selectedToLocation value)? selectedToLocation,
    TResult Function(_GetDirection value)? getDirection,
    TResult Function(_SendRequest value)? sendRequest,
    TResult Function(_GetTrip value)? getTrip,
    TResult Function(_ServiceChange value)? serviceChange,
    required TResult orElse(),
  }) {
    if (sendRequest != null) {
      return sendRequest(this);
    }
    return orElse();
  }
}

abstract class _SendRequest implements TrackEvent {
  const factory _SendRequest() = _$_SendRequest;
}

/// @nodoc
abstract class _$GetTripCopyWith<$Res> {
  factory _$GetTripCopyWith(_GetTrip value, $Res Function(_GetTrip) then) =
      __$GetTripCopyWithImpl<$Res>;
  $Res call({String tripId});
}

/// @nodoc
class __$GetTripCopyWithImpl<$Res> extends _$TrackEventCopyWithImpl<$Res>
    implements _$GetTripCopyWith<$Res> {
  __$GetTripCopyWithImpl(_GetTrip _value, $Res Function(_GetTrip) _then)
      : super(_value, (v) => _then(v as _GetTrip));

  @override
  _GetTrip get _value => super._value as _GetTrip;

  @override
  $Res call({
    Object? tripId = freezed,
  }) {
    return _then(_GetTrip(
      tripId == freezed
          ? _value.tripId
          : tripId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetTrip with DiagnosticableTreeMixin implements _GetTrip {
  const _$_GetTrip(this.tripId);

  @override
  final String tripId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TrackEvent.getTrip(tripId: $tripId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TrackEvent.getTrip'))
      ..add(DiagnosticsProperty('tripId', tripId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetTrip &&
            (identical(other.tripId, tripId) ||
                const DeepCollectionEquality().equals(other.tripId, tripId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(tripId);

  @JsonKey(ignore: true)
  @override
  _$GetTripCopyWith<_GetTrip> get copyWith =>
      __$GetTripCopyWithImpl<_GetTrip>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() currentLocation,
    required TResult Function(String name) fromLocationChange,
    required TResult Function(String name) toLocationChange,
    required TResult Function(String name) selectedFromLocation,
    required TResult Function(String name) selectedToLocation,
    required TResult Function() getDirection,
    required TResult Function() sendRequest,
    required TResult Function(String tripId) getTrip,
    required TResult Function(String service) serviceChange,
  }) {
    return getTrip(tripId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? currentLocation,
    TResult Function(String name)? fromLocationChange,
    TResult Function(String name)? toLocationChange,
    TResult Function(String name)? selectedFromLocation,
    TResult Function(String name)? selectedToLocation,
    TResult Function()? getDirection,
    TResult Function()? sendRequest,
    TResult Function(String tripId)? getTrip,
    TResult Function(String service)? serviceChange,
  }) {
    return getTrip?.call(tripId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? currentLocation,
    TResult Function(String name)? fromLocationChange,
    TResult Function(String name)? toLocationChange,
    TResult Function(String name)? selectedFromLocation,
    TResult Function(String name)? selectedToLocation,
    TResult Function()? getDirection,
    TResult Function()? sendRequest,
    TResult Function(String tripId)? getTrip,
    TResult Function(String service)? serviceChange,
    required TResult orElse(),
  }) {
    if (getTrip != null) {
      return getTrip(tripId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CurrentLocation value) currentLocation,
    required TResult Function(_FromLocationChange value) fromLocationChange,
    required TResult Function(_ToLocationChange value) toLocationChange,
    required TResult Function(_selectedFromLocation value) selectedFromLocation,
    required TResult Function(_selectedToLocation value) selectedToLocation,
    required TResult Function(_GetDirection value) getDirection,
    required TResult Function(_SendRequest value) sendRequest,
    required TResult Function(_GetTrip value) getTrip,
    required TResult Function(_ServiceChange value) serviceChange,
  }) {
    return getTrip(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CurrentLocation value)? currentLocation,
    TResult Function(_FromLocationChange value)? fromLocationChange,
    TResult Function(_ToLocationChange value)? toLocationChange,
    TResult Function(_selectedFromLocation value)? selectedFromLocation,
    TResult Function(_selectedToLocation value)? selectedToLocation,
    TResult Function(_GetDirection value)? getDirection,
    TResult Function(_SendRequest value)? sendRequest,
    TResult Function(_GetTrip value)? getTrip,
    TResult Function(_ServiceChange value)? serviceChange,
  }) {
    return getTrip?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CurrentLocation value)? currentLocation,
    TResult Function(_FromLocationChange value)? fromLocationChange,
    TResult Function(_ToLocationChange value)? toLocationChange,
    TResult Function(_selectedFromLocation value)? selectedFromLocation,
    TResult Function(_selectedToLocation value)? selectedToLocation,
    TResult Function(_GetDirection value)? getDirection,
    TResult Function(_SendRequest value)? sendRequest,
    TResult Function(_GetTrip value)? getTrip,
    TResult Function(_ServiceChange value)? serviceChange,
    required TResult orElse(),
  }) {
    if (getTrip != null) {
      return getTrip(this);
    }
    return orElse();
  }
}

abstract class _GetTrip implements TrackEvent {
  const factory _GetTrip(String tripId) = _$_GetTrip;

  String get tripId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GetTripCopyWith<_GetTrip> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ServiceChangeCopyWith<$Res> {
  factory _$ServiceChangeCopyWith(
          _ServiceChange value, $Res Function(_ServiceChange) then) =
      __$ServiceChangeCopyWithImpl<$Res>;
  $Res call({String service});
}

/// @nodoc
class __$ServiceChangeCopyWithImpl<$Res> extends _$TrackEventCopyWithImpl<$Res>
    implements _$ServiceChangeCopyWith<$Res> {
  __$ServiceChangeCopyWithImpl(
      _ServiceChange _value, $Res Function(_ServiceChange) _then)
      : super(_value, (v) => _then(v as _ServiceChange));

  @override
  _ServiceChange get _value => super._value as _ServiceChange;

  @override
  $Res call({
    Object? service = freezed,
  }) {
    return _then(_ServiceChange(
      service == freezed
          ? _value.service
          : service // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ServiceChange with DiagnosticableTreeMixin implements _ServiceChange {
  const _$_ServiceChange(this.service);

  @override
  final String service;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TrackEvent.serviceChange(service: $service)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TrackEvent.serviceChange'))
      ..add(DiagnosticsProperty('service', service));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ServiceChange &&
            (identical(other.service, service) ||
                const DeepCollectionEquality().equals(other.service, service)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(service);

  @JsonKey(ignore: true)
  @override
  _$ServiceChangeCopyWith<_ServiceChange> get copyWith =>
      __$ServiceChangeCopyWithImpl<_ServiceChange>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() currentLocation,
    required TResult Function(String name) fromLocationChange,
    required TResult Function(String name) toLocationChange,
    required TResult Function(String name) selectedFromLocation,
    required TResult Function(String name) selectedToLocation,
    required TResult Function() getDirection,
    required TResult Function() sendRequest,
    required TResult Function(String tripId) getTrip,
    required TResult Function(String service) serviceChange,
  }) {
    return serviceChange(service);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? currentLocation,
    TResult Function(String name)? fromLocationChange,
    TResult Function(String name)? toLocationChange,
    TResult Function(String name)? selectedFromLocation,
    TResult Function(String name)? selectedToLocation,
    TResult Function()? getDirection,
    TResult Function()? sendRequest,
    TResult Function(String tripId)? getTrip,
    TResult Function(String service)? serviceChange,
  }) {
    return serviceChange?.call(service);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? currentLocation,
    TResult Function(String name)? fromLocationChange,
    TResult Function(String name)? toLocationChange,
    TResult Function(String name)? selectedFromLocation,
    TResult Function(String name)? selectedToLocation,
    TResult Function()? getDirection,
    TResult Function()? sendRequest,
    TResult Function(String tripId)? getTrip,
    TResult Function(String service)? serviceChange,
    required TResult orElse(),
  }) {
    if (serviceChange != null) {
      return serviceChange(service);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CurrentLocation value) currentLocation,
    required TResult Function(_FromLocationChange value) fromLocationChange,
    required TResult Function(_ToLocationChange value) toLocationChange,
    required TResult Function(_selectedFromLocation value) selectedFromLocation,
    required TResult Function(_selectedToLocation value) selectedToLocation,
    required TResult Function(_GetDirection value) getDirection,
    required TResult Function(_SendRequest value) sendRequest,
    required TResult Function(_GetTrip value) getTrip,
    required TResult Function(_ServiceChange value) serviceChange,
  }) {
    return serviceChange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CurrentLocation value)? currentLocation,
    TResult Function(_FromLocationChange value)? fromLocationChange,
    TResult Function(_ToLocationChange value)? toLocationChange,
    TResult Function(_selectedFromLocation value)? selectedFromLocation,
    TResult Function(_selectedToLocation value)? selectedToLocation,
    TResult Function(_GetDirection value)? getDirection,
    TResult Function(_SendRequest value)? sendRequest,
    TResult Function(_GetTrip value)? getTrip,
    TResult Function(_ServiceChange value)? serviceChange,
  }) {
    return serviceChange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CurrentLocation value)? currentLocation,
    TResult Function(_FromLocationChange value)? fromLocationChange,
    TResult Function(_ToLocationChange value)? toLocationChange,
    TResult Function(_selectedFromLocation value)? selectedFromLocation,
    TResult Function(_selectedToLocation value)? selectedToLocation,
    TResult Function(_GetDirection value)? getDirection,
    TResult Function(_SendRequest value)? sendRequest,
    TResult Function(_GetTrip value)? getTrip,
    TResult Function(_ServiceChange value)? serviceChange,
    required TResult orElse(),
  }) {
    if (serviceChange != null) {
      return serviceChange(this);
    }
    return orElse();
  }
}

abstract class _ServiceChange implements TrackEvent {
  const factory _ServiceChange(String service) = _$_ServiceChange;

  String get service => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ServiceChangeCopyWith<_ServiceChange> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$TrackStateTearOff {
  const _$TrackStateTearOff();

  _TrackState call(
      {required Position current,
      required String active,
      required String from,
      required String to,
      required List<AutocompletePrediction> fromPrediction,
      required List<AutocompletePrediction> toPrediction,
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
      required Option<Either<RequestFailure, RequestModel>> request}) {
    return _TrackState(
      current: current,
      active: active,
      from: from,
      to: to,
      fromPrediction: fromPrediction,
      toPrediction: toPrediction,
      loading: loading,
      fromPlace: fromPlace,
      toPlace: toPlace,
      directions: directions,
      distance: distance,
      time: time,
      taxPrice: taxPrice,
      xxlPrice: xxlPrice,
      bodaPrice: bodaPrice,
      bajajPrice: bajajPrice,
      kirikuuPrice: kirikuuPrice,
      priceLoading: priceLoading,
      requestLoading: requestLoading,
      service: service,
      search: search,
      request: request,
    );
  }
}

/// @nodoc
const $TrackState = _$TrackStateTearOff();

/// @nodoc
mixin _$TrackState {
  Position get current => throw _privateConstructorUsedError;
  String get active => throw _privateConstructorUsedError;
  String get from => throw _privateConstructorUsedError;
  String get to => throw _privateConstructorUsedError;
  List<AutocompletePrediction> get fromPrediction =>
      throw _privateConstructorUsedError;
  List<AutocompletePrediction> get toPrediction =>
      throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  Address get fromPlace => throw _privateConstructorUsedError;
  Address get toPlace => throw _privateConstructorUsedError;
  Map<String, dynamic> get directions => throw _privateConstructorUsedError;
  double get distance => throw _privateConstructorUsedError;
  double get time => throw _privateConstructorUsedError;
  double get taxPrice => throw _privateConstructorUsedError;
  double get xxlPrice => throw _privateConstructorUsedError;
  double get bodaPrice => throw _privateConstructorUsedError;
  double get bajajPrice => throw _privateConstructorUsedError;
  double get kirikuuPrice => throw _privateConstructorUsedError;
  bool get priceLoading => throw _privateConstructorUsedError;
  bool get requestLoading => throw _privateConstructorUsedError;
  String get service => throw _privateConstructorUsedError;
  bool get search => throw _privateConstructorUsedError;
  Option<Either<RequestFailure, RequestModel>> get request =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TrackStateCopyWith<TrackState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackStateCopyWith<$Res> {
  factory $TrackStateCopyWith(
          TrackState value, $Res Function(TrackState) then) =
      _$TrackStateCopyWithImpl<$Res>;
  $Res call(
      {Position current,
      String active,
      String from,
      String to,
      List<AutocompletePrediction> fromPrediction,
      List<AutocompletePrediction> toPrediction,
      bool loading,
      Address fromPlace,
      Address toPlace,
      Map<String, dynamic> directions,
      double distance,
      double time,
      double taxPrice,
      double xxlPrice,
      double bodaPrice,
      double bajajPrice,
      double kirikuuPrice,
      bool priceLoading,
      bool requestLoading,
      String service,
      bool search,
      Option<Either<RequestFailure, RequestModel>> request});
}

/// @nodoc
class _$TrackStateCopyWithImpl<$Res> implements $TrackStateCopyWith<$Res> {
  _$TrackStateCopyWithImpl(this._value, this._then);

  final TrackState _value;
  // ignore: unused_field
  final $Res Function(TrackState) _then;

  @override
  $Res call({
    Object? current = freezed,
    Object? active = freezed,
    Object? from = freezed,
    Object? to = freezed,
    Object? fromPrediction = freezed,
    Object? toPrediction = freezed,
    Object? loading = freezed,
    Object? fromPlace = freezed,
    Object? toPlace = freezed,
    Object? directions = freezed,
    Object? distance = freezed,
    Object? time = freezed,
    Object? taxPrice = freezed,
    Object? xxlPrice = freezed,
    Object? bodaPrice = freezed,
    Object? bajajPrice = freezed,
    Object? kirikuuPrice = freezed,
    Object? priceLoading = freezed,
    Object? requestLoading = freezed,
    Object? service = freezed,
    Object? search = freezed,
    Object? request = freezed,
  }) {
    return _then(_value.copyWith(
      current: current == freezed
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as Position,
      active: active == freezed
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as String,
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String,
      to: to == freezed
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
      fromPrediction: fromPrediction == freezed
          ? _value.fromPrediction
          : fromPrediction // ignore: cast_nullable_to_non_nullable
              as List<AutocompletePrediction>,
      toPrediction: toPrediction == freezed
          ? _value.toPrediction
          : toPrediction // ignore: cast_nullable_to_non_nullable
              as List<AutocompletePrediction>,
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      fromPlace: fromPlace == freezed
          ? _value.fromPlace
          : fromPlace // ignore: cast_nullable_to_non_nullable
              as Address,
      toPlace: toPlace == freezed
          ? _value.toPlace
          : toPlace // ignore: cast_nullable_to_non_nullable
              as Address,
      directions: directions == freezed
          ? _value.directions
          : directions // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      distance: distance == freezed
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as double,
      taxPrice: taxPrice == freezed
          ? _value.taxPrice
          : taxPrice // ignore: cast_nullable_to_non_nullable
              as double,
      xxlPrice: xxlPrice == freezed
          ? _value.xxlPrice
          : xxlPrice // ignore: cast_nullable_to_non_nullable
              as double,
      bodaPrice: bodaPrice == freezed
          ? _value.bodaPrice
          : bodaPrice // ignore: cast_nullable_to_non_nullable
              as double,
      bajajPrice: bajajPrice == freezed
          ? _value.bajajPrice
          : bajajPrice // ignore: cast_nullable_to_non_nullable
              as double,
      kirikuuPrice: kirikuuPrice == freezed
          ? _value.kirikuuPrice
          : kirikuuPrice // ignore: cast_nullable_to_non_nullable
              as double,
      priceLoading: priceLoading == freezed
          ? _value.priceLoading
          : priceLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      requestLoading: requestLoading == freezed
          ? _value.requestLoading
          : requestLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      service: service == freezed
          ? _value.service
          : service // ignore: cast_nullable_to_non_nullable
              as String,
      search: search == freezed
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as bool,
      request: request == freezed
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as Option<Either<RequestFailure, RequestModel>>,
    ));
  }
}

/// @nodoc
abstract class _$TrackStateCopyWith<$Res> implements $TrackStateCopyWith<$Res> {
  factory _$TrackStateCopyWith(
          _TrackState value, $Res Function(_TrackState) then) =
      __$TrackStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Position current,
      String active,
      String from,
      String to,
      List<AutocompletePrediction> fromPrediction,
      List<AutocompletePrediction> toPrediction,
      bool loading,
      Address fromPlace,
      Address toPlace,
      Map<String, dynamic> directions,
      double distance,
      double time,
      double taxPrice,
      double xxlPrice,
      double bodaPrice,
      double bajajPrice,
      double kirikuuPrice,
      bool priceLoading,
      bool requestLoading,
      String service,
      bool search,
      Option<Either<RequestFailure, RequestModel>> request});
}

/// @nodoc
class __$TrackStateCopyWithImpl<$Res> extends _$TrackStateCopyWithImpl<$Res>
    implements _$TrackStateCopyWith<$Res> {
  __$TrackStateCopyWithImpl(
      _TrackState _value, $Res Function(_TrackState) _then)
      : super(_value, (v) => _then(v as _TrackState));

  @override
  _TrackState get _value => super._value as _TrackState;

  @override
  $Res call({
    Object? current = freezed,
    Object? active = freezed,
    Object? from = freezed,
    Object? to = freezed,
    Object? fromPrediction = freezed,
    Object? toPrediction = freezed,
    Object? loading = freezed,
    Object? fromPlace = freezed,
    Object? toPlace = freezed,
    Object? directions = freezed,
    Object? distance = freezed,
    Object? time = freezed,
    Object? taxPrice = freezed,
    Object? xxlPrice = freezed,
    Object? bodaPrice = freezed,
    Object? bajajPrice = freezed,
    Object? kirikuuPrice = freezed,
    Object? priceLoading = freezed,
    Object? requestLoading = freezed,
    Object? service = freezed,
    Object? search = freezed,
    Object? request = freezed,
  }) {
    return _then(_TrackState(
      current: current == freezed
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as Position,
      active: active == freezed
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as String,
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String,
      to: to == freezed
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
      fromPrediction: fromPrediction == freezed
          ? _value.fromPrediction
          : fromPrediction // ignore: cast_nullable_to_non_nullable
              as List<AutocompletePrediction>,
      toPrediction: toPrediction == freezed
          ? _value.toPrediction
          : toPrediction // ignore: cast_nullable_to_non_nullable
              as List<AutocompletePrediction>,
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      fromPlace: fromPlace == freezed
          ? _value.fromPlace
          : fromPlace // ignore: cast_nullable_to_non_nullable
              as Address,
      toPlace: toPlace == freezed
          ? _value.toPlace
          : toPlace // ignore: cast_nullable_to_non_nullable
              as Address,
      directions: directions == freezed
          ? _value.directions
          : directions // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      distance: distance == freezed
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as double,
      taxPrice: taxPrice == freezed
          ? _value.taxPrice
          : taxPrice // ignore: cast_nullable_to_non_nullable
              as double,
      xxlPrice: xxlPrice == freezed
          ? _value.xxlPrice
          : xxlPrice // ignore: cast_nullable_to_non_nullable
              as double,
      bodaPrice: bodaPrice == freezed
          ? _value.bodaPrice
          : bodaPrice // ignore: cast_nullable_to_non_nullable
              as double,
      bajajPrice: bajajPrice == freezed
          ? _value.bajajPrice
          : bajajPrice // ignore: cast_nullable_to_non_nullable
              as double,
      kirikuuPrice: kirikuuPrice == freezed
          ? _value.kirikuuPrice
          : kirikuuPrice // ignore: cast_nullable_to_non_nullable
              as double,
      priceLoading: priceLoading == freezed
          ? _value.priceLoading
          : priceLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      requestLoading: requestLoading == freezed
          ? _value.requestLoading
          : requestLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      service: service == freezed
          ? _value.service
          : service // ignore: cast_nullable_to_non_nullable
              as String,
      search: search == freezed
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as bool,
      request: request == freezed
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as Option<Either<RequestFailure, RequestModel>>,
    ));
  }
}

/// @nodoc

class _$_TrackState with DiagnosticableTreeMixin implements _TrackState {
  const _$_TrackState(
      {required this.current,
      required this.active,
      required this.from,
      required this.to,
      required this.fromPrediction,
      required this.toPrediction,
      required this.loading,
      required this.fromPlace,
      required this.toPlace,
      required this.directions,
      required this.distance,
      required this.time,
      required this.taxPrice,
      required this.xxlPrice,
      required this.bodaPrice,
      required this.bajajPrice,
      required this.kirikuuPrice,
      required this.priceLoading,
      required this.requestLoading,
      required this.service,
      required this.search,
      required this.request});

  @override
  final Position current;
  @override
  final String active;
  @override
  final String from;
  @override
  final String to;
  @override
  final List<AutocompletePrediction> fromPrediction;
  @override
  final List<AutocompletePrediction> toPrediction;
  @override
  final bool loading;
  @override
  final Address fromPlace;
  @override
  final Address toPlace;
  @override
  final Map<String, dynamic> directions;
  @override
  final double distance;
  @override
  final double time;
  @override
  final double taxPrice;
  @override
  final double xxlPrice;
  @override
  final double bodaPrice;
  @override
  final double bajajPrice;
  @override
  final double kirikuuPrice;
  @override
  final bool priceLoading;
  @override
  final bool requestLoading;
  @override
  final String service;
  @override
  final bool search;
  @override
  final Option<Either<RequestFailure, RequestModel>> request;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TrackState(current: $current, active: $active, from: $from, to: $to, fromPrediction: $fromPrediction, toPrediction: $toPrediction, loading: $loading, fromPlace: $fromPlace, toPlace: $toPlace, directions: $directions, distance: $distance, time: $time, taxPrice: $taxPrice, xxlPrice: $xxlPrice, bodaPrice: $bodaPrice, bajajPrice: $bajajPrice, kirikuuPrice: $kirikuuPrice, priceLoading: $priceLoading, requestLoading: $requestLoading, service: $service, search: $search, request: $request)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TrackState'))
      ..add(DiagnosticsProperty('current', current))
      ..add(DiagnosticsProperty('active', active))
      ..add(DiagnosticsProperty('from', from))
      ..add(DiagnosticsProperty('to', to))
      ..add(DiagnosticsProperty('fromPrediction', fromPrediction))
      ..add(DiagnosticsProperty('toPrediction', toPrediction))
      ..add(DiagnosticsProperty('loading', loading))
      ..add(DiagnosticsProperty('fromPlace', fromPlace))
      ..add(DiagnosticsProperty('toPlace', toPlace))
      ..add(DiagnosticsProperty('directions', directions))
      ..add(DiagnosticsProperty('distance', distance))
      ..add(DiagnosticsProperty('time', time))
      ..add(DiagnosticsProperty('taxPrice', taxPrice))
      ..add(DiagnosticsProperty('xxlPrice', xxlPrice))
      ..add(DiagnosticsProperty('bodaPrice', bodaPrice))
      ..add(DiagnosticsProperty('bajajPrice', bajajPrice))
      ..add(DiagnosticsProperty('kirikuuPrice', kirikuuPrice))
      ..add(DiagnosticsProperty('priceLoading', priceLoading))
      ..add(DiagnosticsProperty('requestLoading', requestLoading))
      ..add(DiagnosticsProperty('service', service))
      ..add(DiagnosticsProperty('search', search))
      ..add(DiagnosticsProperty('request', request));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TrackState &&
            (identical(other.current, current) ||
                const DeepCollectionEquality()
                    .equals(other.current, current)) &&
            (identical(other.active, active) ||
                const DeepCollectionEquality().equals(other.active, active)) &&
            (identical(other.from, from) ||
                const DeepCollectionEquality().equals(other.from, from)) &&
            (identical(other.to, to) ||
                const DeepCollectionEquality().equals(other.to, to)) &&
            (identical(other.fromPrediction, fromPrediction) ||
                const DeepCollectionEquality()
                    .equals(other.fromPrediction, fromPrediction)) &&
            (identical(other.toPrediction, toPrediction) ||
                const DeepCollectionEquality()
                    .equals(other.toPrediction, toPrediction)) &&
            (identical(other.loading, loading) ||
                const DeepCollectionEquality()
                    .equals(other.loading, loading)) &&
            (identical(other.fromPlace, fromPlace) ||
                const DeepCollectionEquality()
                    .equals(other.fromPlace, fromPlace)) &&
            (identical(other.toPlace, toPlace) ||
                const DeepCollectionEquality()
                    .equals(other.toPlace, toPlace)) &&
            (identical(other.directions, directions) ||
                const DeepCollectionEquality()
                    .equals(other.directions, directions)) &&
            (identical(other.distance, distance) ||
                const DeepCollectionEquality()
                    .equals(other.distance, distance)) &&
            (identical(other.time, time) ||
                const DeepCollectionEquality().equals(other.time, time)) &&
            (identical(other.taxPrice, taxPrice) ||
                const DeepCollectionEquality()
                    .equals(other.taxPrice, taxPrice)) &&
            (identical(other.xxlPrice, xxlPrice) ||
                const DeepCollectionEquality()
                    .equals(other.xxlPrice, xxlPrice)) &&
            (identical(other.bodaPrice, bodaPrice) ||
                const DeepCollectionEquality()
                    .equals(other.bodaPrice, bodaPrice)) &&
            (identical(other.bajajPrice, bajajPrice) ||
                const DeepCollectionEquality()
                    .equals(other.bajajPrice, bajajPrice)) &&
            (identical(other.kirikuuPrice, kirikuuPrice) ||
                const DeepCollectionEquality()
                    .equals(other.kirikuuPrice, kirikuuPrice)) &&
            (identical(other.priceLoading, priceLoading) ||
                const DeepCollectionEquality()
                    .equals(other.priceLoading, priceLoading)) &&
            (identical(other.requestLoading, requestLoading) ||
                const DeepCollectionEquality()
                    .equals(other.requestLoading, requestLoading)) &&
            (identical(other.service, service) ||
                const DeepCollectionEquality()
                    .equals(other.service, service)) &&
            (identical(other.search, search) ||
                const DeepCollectionEquality().equals(other.search, search)) &&
            (identical(other.request, request) ||
                const DeepCollectionEquality().equals(other.request, request)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(current) ^
      const DeepCollectionEquality().hash(active) ^
      const DeepCollectionEquality().hash(from) ^
      const DeepCollectionEquality().hash(to) ^
      const DeepCollectionEquality().hash(fromPrediction) ^
      const DeepCollectionEquality().hash(toPrediction) ^
      const DeepCollectionEquality().hash(loading) ^
      const DeepCollectionEquality().hash(fromPlace) ^
      const DeepCollectionEquality().hash(toPlace) ^
      const DeepCollectionEquality().hash(directions) ^
      const DeepCollectionEquality().hash(distance) ^
      const DeepCollectionEquality().hash(time) ^
      const DeepCollectionEquality().hash(taxPrice) ^
      const DeepCollectionEquality().hash(xxlPrice) ^
      const DeepCollectionEquality().hash(bodaPrice) ^
      const DeepCollectionEquality().hash(bajajPrice) ^
      const DeepCollectionEquality().hash(kirikuuPrice) ^
      const DeepCollectionEquality().hash(priceLoading) ^
      const DeepCollectionEquality().hash(requestLoading) ^
      const DeepCollectionEquality().hash(service) ^
      const DeepCollectionEquality().hash(search) ^
      const DeepCollectionEquality().hash(request);

  @JsonKey(ignore: true)
  @override
  _$TrackStateCopyWith<_TrackState> get copyWith =>
      __$TrackStateCopyWithImpl<_TrackState>(this, _$identity);
}

abstract class _TrackState implements TrackState {
  const factory _TrackState(
          {required Position current,
          required String active,
          required String from,
          required String to,
          required List<AutocompletePrediction> fromPrediction,
          required List<AutocompletePrediction> toPrediction,
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
          required Option<Either<RequestFailure, RequestModel>> request}) =
      _$_TrackState;

  @override
  Position get current => throw _privateConstructorUsedError;
  @override
  String get active => throw _privateConstructorUsedError;
  @override
  String get from => throw _privateConstructorUsedError;
  @override
  String get to => throw _privateConstructorUsedError;
  @override
  List<AutocompletePrediction> get fromPrediction =>
      throw _privateConstructorUsedError;
  @override
  List<AutocompletePrediction> get toPrediction =>
      throw _privateConstructorUsedError;
  @override
  bool get loading => throw _privateConstructorUsedError;
  @override
  Address get fromPlace => throw _privateConstructorUsedError;
  @override
  Address get toPlace => throw _privateConstructorUsedError;
  @override
  Map<String, dynamic> get directions => throw _privateConstructorUsedError;
  @override
  double get distance => throw _privateConstructorUsedError;
  @override
  double get time => throw _privateConstructorUsedError;
  @override
  double get taxPrice => throw _privateConstructorUsedError;
  @override
  double get xxlPrice => throw _privateConstructorUsedError;
  @override
  double get bodaPrice => throw _privateConstructorUsedError;
  @override
  double get bajajPrice => throw _privateConstructorUsedError;
  @override
  double get kirikuuPrice => throw _privateConstructorUsedError;
  @override
  bool get priceLoading => throw _privateConstructorUsedError;
  @override
  bool get requestLoading => throw _privateConstructorUsedError;
  @override
  String get service => throw _privateConstructorUsedError;
  @override
  bool get search => throw _privateConstructorUsedError;
  @override
  Option<Either<RequestFailure, RequestModel>> get request =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TrackStateCopyWith<_TrackState> get copyWith =>
      throw _privateConstructorUsedError;
}
