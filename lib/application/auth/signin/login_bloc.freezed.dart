// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LoginEventTearOff {
  const _$LoginEventTearOff();

  EmailChanged emailChanged(String emailStr) {
    return EmailChanged(
      emailStr,
    );
  }

  ResetEmailChanged resetEmailChanged(String emailStr) {
    return ResetEmailChanged(
      emailStr,
    );
  }

  PasswordChanged passwordChanged(String passwordStr) {
    return PasswordChanged(
      passwordStr,
    );
  }

  SignInPressed signInPressed() {
    return const SignInPressed();
  }

  ResetPressed resetPressed() {
    return const ResetPressed();
  }

  SignOutPressed signOutPressed() {
    return const SignOutPressed();
  }
}

/// @nodoc
const $LoginEvent = _$LoginEventTearOff();

/// @nodoc
mixin _$LoginEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String emailStr) resetEmailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function() signInPressed,
    required TResult Function() resetPressed,
    required TResult Function() signOutPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String emailStr)? resetEmailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function()? signInPressed,
    TResult Function()? resetPressed,
    TResult Function()? signOutPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String emailStr)? resetEmailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function()? signInPressed,
    TResult Function()? resetPressed,
    TResult Function()? signOutPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(ResetEmailChanged value) resetEmailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(SignInPressed value) signInPressed,
    required TResult Function(ResetPressed value) resetPressed,
    required TResult Function(SignOutPressed value) signOutPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(ResetEmailChanged value)? resetEmailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SignInPressed value)? signInPressed,
    TResult Function(ResetPressed value)? resetPressed,
    TResult Function(SignOutPressed value)? signOutPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(ResetEmailChanged value)? resetEmailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SignInPressed value)? signInPressed,
    TResult Function(ResetPressed value)? resetPressed,
    TResult Function(SignOutPressed value)? signOutPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res> implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  final LoginEvent _value;
  // ignore: unused_field
  final $Res Function(LoginEvent) _then;
}

/// @nodoc
abstract class $EmailChangedCopyWith<$Res> {
  factory $EmailChangedCopyWith(
          EmailChanged value, $Res Function(EmailChanged) then) =
      _$EmailChangedCopyWithImpl<$Res>;
  $Res call({String emailStr});
}

/// @nodoc
class _$EmailChangedCopyWithImpl<$Res> extends _$LoginEventCopyWithImpl<$Res>
    implements $EmailChangedCopyWith<$Res> {
  _$EmailChangedCopyWithImpl(
      EmailChanged _value, $Res Function(EmailChanged) _then)
      : super(_value, (v) => _then(v as EmailChanged));

  @override
  EmailChanged get _value => super._value as EmailChanged;

  @override
  $Res call({
    Object? emailStr = freezed,
  }) {
    return _then(EmailChanged(
      emailStr == freezed
          ? _value.emailStr
          : emailStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EmailChanged implements EmailChanged {
  const _$EmailChanged(this.emailStr);

  @override
  final String emailStr;

  @override
  String toString() {
    return 'LoginEvent.emailChanged(emailStr: $emailStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EmailChanged &&
            (identical(other.emailStr, emailStr) ||
                const DeepCollectionEquality()
                    .equals(other.emailStr, emailStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(emailStr);

  @JsonKey(ignore: true)
  @override
  $EmailChangedCopyWith<EmailChanged> get copyWith =>
      _$EmailChangedCopyWithImpl<EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String emailStr) resetEmailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function() signInPressed,
    required TResult Function() resetPressed,
    required TResult Function() signOutPressed,
  }) {
    return emailChanged(emailStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String emailStr)? resetEmailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function()? signInPressed,
    TResult Function()? resetPressed,
    TResult Function()? signOutPressed,
  }) {
    return emailChanged?.call(emailStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String emailStr)? resetEmailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function()? signInPressed,
    TResult Function()? resetPressed,
    TResult Function()? signOutPressed,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(emailStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(ResetEmailChanged value) resetEmailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(SignInPressed value) signInPressed,
    required TResult Function(ResetPressed value) resetPressed,
    required TResult Function(SignOutPressed value) signOutPressed,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(ResetEmailChanged value)? resetEmailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SignInPressed value)? signInPressed,
    TResult Function(ResetPressed value)? resetPressed,
    TResult Function(SignOutPressed value)? signOutPressed,
  }) {
    return emailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(ResetEmailChanged value)? resetEmailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SignInPressed value)? signInPressed,
    TResult Function(ResetPressed value)? resetPressed,
    TResult Function(SignOutPressed value)? signOutPressed,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class EmailChanged implements LoginEvent {
  const factory EmailChanged(String emailStr) = _$EmailChanged;

  String get emailStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmailChangedCopyWith<EmailChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResetEmailChangedCopyWith<$Res> {
  factory $ResetEmailChangedCopyWith(
          ResetEmailChanged value, $Res Function(ResetEmailChanged) then) =
      _$ResetEmailChangedCopyWithImpl<$Res>;
  $Res call({String emailStr});
}

/// @nodoc
class _$ResetEmailChangedCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res>
    implements $ResetEmailChangedCopyWith<$Res> {
  _$ResetEmailChangedCopyWithImpl(
      ResetEmailChanged _value, $Res Function(ResetEmailChanged) _then)
      : super(_value, (v) => _then(v as ResetEmailChanged));

  @override
  ResetEmailChanged get _value => super._value as ResetEmailChanged;

  @override
  $Res call({
    Object? emailStr = freezed,
  }) {
    return _then(ResetEmailChanged(
      emailStr == freezed
          ? _value.emailStr
          : emailStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ResetEmailChanged implements ResetEmailChanged {
  const _$ResetEmailChanged(this.emailStr);

  @override
  final String emailStr;

  @override
  String toString() {
    return 'LoginEvent.resetEmailChanged(emailStr: $emailStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ResetEmailChanged &&
            (identical(other.emailStr, emailStr) ||
                const DeepCollectionEquality()
                    .equals(other.emailStr, emailStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(emailStr);

  @JsonKey(ignore: true)
  @override
  $ResetEmailChangedCopyWith<ResetEmailChanged> get copyWith =>
      _$ResetEmailChangedCopyWithImpl<ResetEmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String emailStr) resetEmailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function() signInPressed,
    required TResult Function() resetPressed,
    required TResult Function() signOutPressed,
  }) {
    return resetEmailChanged(emailStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String emailStr)? resetEmailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function()? signInPressed,
    TResult Function()? resetPressed,
    TResult Function()? signOutPressed,
  }) {
    return resetEmailChanged?.call(emailStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String emailStr)? resetEmailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function()? signInPressed,
    TResult Function()? resetPressed,
    TResult Function()? signOutPressed,
    required TResult orElse(),
  }) {
    if (resetEmailChanged != null) {
      return resetEmailChanged(emailStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(ResetEmailChanged value) resetEmailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(SignInPressed value) signInPressed,
    required TResult Function(ResetPressed value) resetPressed,
    required TResult Function(SignOutPressed value) signOutPressed,
  }) {
    return resetEmailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(ResetEmailChanged value)? resetEmailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SignInPressed value)? signInPressed,
    TResult Function(ResetPressed value)? resetPressed,
    TResult Function(SignOutPressed value)? signOutPressed,
  }) {
    return resetEmailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(ResetEmailChanged value)? resetEmailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SignInPressed value)? signInPressed,
    TResult Function(ResetPressed value)? resetPressed,
    TResult Function(SignOutPressed value)? signOutPressed,
    required TResult orElse(),
  }) {
    if (resetEmailChanged != null) {
      return resetEmailChanged(this);
    }
    return orElse();
  }
}

abstract class ResetEmailChanged implements LoginEvent {
  const factory ResetEmailChanged(String emailStr) = _$ResetEmailChanged;

  String get emailStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResetEmailChangedCopyWith<ResetEmailChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordChangedCopyWith<$Res> {
  factory $PasswordChangedCopyWith(
          PasswordChanged value, $Res Function(PasswordChanged) then) =
      _$PasswordChangedCopyWithImpl<$Res>;
  $Res call({String passwordStr});
}

/// @nodoc
class _$PasswordChangedCopyWithImpl<$Res> extends _$LoginEventCopyWithImpl<$Res>
    implements $PasswordChangedCopyWith<$Res> {
  _$PasswordChangedCopyWithImpl(
      PasswordChanged _value, $Res Function(PasswordChanged) _then)
      : super(_value, (v) => _then(v as PasswordChanged));

  @override
  PasswordChanged get _value => super._value as PasswordChanged;

  @override
  $Res call({
    Object? passwordStr = freezed,
  }) {
    return _then(PasswordChanged(
      passwordStr == freezed
          ? _value.passwordStr
          : passwordStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PasswordChanged implements PasswordChanged {
  const _$PasswordChanged(this.passwordStr);

  @override
  final String passwordStr;

  @override
  String toString() {
    return 'LoginEvent.passwordChanged(passwordStr: $passwordStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PasswordChanged &&
            (identical(other.passwordStr, passwordStr) ||
                const DeepCollectionEquality()
                    .equals(other.passwordStr, passwordStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(passwordStr);

  @JsonKey(ignore: true)
  @override
  $PasswordChangedCopyWith<PasswordChanged> get copyWith =>
      _$PasswordChangedCopyWithImpl<PasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String emailStr) resetEmailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function() signInPressed,
    required TResult Function() resetPressed,
    required TResult Function() signOutPressed,
  }) {
    return passwordChanged(passwordStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String emailStr)? resetEmailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function()? signInPressed,
    TResult Function()? resetPressed,
    TResult Function()? signOutPressed,
  }) {
    return passwordChanged?.call(passwordStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String emailStr)? resetEmailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function()? signInPressed,
    TResult Function()? resetPressed,
    TResult Function()? signOutPressed,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(passwordStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(ResetEmailChanged value) resetEmailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(SignInPressed value) signInPressed,
    required TResult Function(ResetPressed value) resetPressed,
    required TResult Function(SignOutPressed value) signOutPressed,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(ResetEmailChanged value)? resetEmailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SignInPressed value)? signInPressed,
    TResult Function(ResetPressed value)? resetPressed,
    TResult Function(SignOutPressed value)? signOutPressed,
  }) {
    return passwordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(ResetEmailChanged value)? resetEmailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SignInPressed value)? signInPressed,
    TResult Function(ResetPressed value)? resetPressed,
    TResult Function(SignOutPressed value)? signOutPressed,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordChanged implements LoginEvent {
  const factory PasswordChanged(String passwordStr) = _$PasswordChanged;

  String get passwordStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PasswordChangedCopyWith<PasswordChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInPressedCopyWith<$Res> {
  factory $SignInPressedCopyWith(
          SignInPressed value, $Res Function(SignInPressed) then) =
      _$SignInPressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignInPressedCopyWithImpl<$Res> extends _$LoginEventCopyWithImpl<$Res>
    implements $SignInPressedCopyWith<$Res> {
  _$SignInPressedCopyWithImpl(
      SignInPressed _value, $Res Function(SignInPressed) _then)
      : super(_value, (v) => _then(v as SignInPressed));

  @override
  SignInPressed get _value => super._value as SignInPressed;
}

/// @nodoc

class _$SignInPressed implements SignInPressed {
  const _$SignInPressed();

  @override
  String toString() {
    return 'LoginEvent.signInPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SignInPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String emailStr) resetEmailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function() signInPressed,
    required TResult Function() resetPressed,
    required TResult Function() signOutPressed,
  }) {
    return signInPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String emailStr)? resetEmailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function()? signInPressed,
    TResult Function()? resetPressed,
    TResult Function()? signOutPressed,
  }) {
    return signInPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String emailStr)? resetEmailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function()? signInPressed,
    TResult Function()? resetPressed,
    TResult Function()? signOutPressed,
    required TResult orElse(),
  }) {
    if (signInPressed != null) {
      return signInPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(ResetEmailChanged value) resetEmailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(SignInPressed value) signInPressed,
    required TResult Function(ResetPressed value) resetPressed,
    required TResult Function(SignOutPressed value) signOutPressed,
  }) {
    return signInPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(ResetEmailChanged value)? resetEmailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SignInPressed value)? signInPressed,
    TResult Function(ResetPressed value)? resetPressed,
    TResult Function(SignOutPressed value)? signOutPressed,
  }) {
    return signInPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(ResetEmailChanged value)? resetEmailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SignInPressed value)? signInPressed,
    TResult Function(ResetPressed value)? resetPressed,
    TResult Function(SignOutPressed value)? signOutPressed,
    required TResult orElse(),
  }) {
    if (signInPressed != null) {
      return signInPressed(this);
    }
    return orElse();
  }
}

abstract class SignInPressed implements LoginEvent {
  const factory SignInPressed() = _$SignInPressed;
}

/// @nodoc
abstract class $ResetPressedCopyWith<$Res> {
  factory $ResetPressedCopyWith(
          ResetPressed value, $Res Function(ResetPressed) then) =
      _$ResetPressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$ResetPressedCopyWithImpl<$Res> extends _$LoginEventCopyWithImpl<$Res>
    implements $ResetPressedCopyWith<$Res> {
  _$ResetPressedCopyWithImpl(
      ResetPressed _value, $Res Function(ResetPressed) _then)
      : super(_value, (v) => _then(v as ResetPressed));

  @override
  ResetPressed get _value => super._value as ResetPressed;
}

/// @nodoc

class _$ResetPressed implements ResetPressed {
  const _$ResetPressed();

  @override
  String toString() {
    return 'LoginEvent.resetPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ResetPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String emailStr) resetEmailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function() signInPressed,
    required TResult Function() resetPressed,
    required TResult Function() signOutPressed,
  }) {
    return resetPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String emailStr)? resetEmailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function()? signInPressed,
    TResult Function()? resetPressed,
    TResult Function()? signOutPressed,
  }) {
    return resetPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String emailStr)? resetEmailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function()? signInPressed,
    TResult Function()? resetPressed,
    TResult Function()? signOutPressed,
    required TResult orElse(),
  }) {
    if (resetPressed != null) {
      return resetPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(ResetEmailChanged value) resetEmailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(SignInPressed value) signInPressed,
    required TResult Function(ResetPressed value) resetPressed,
    required TResult Function(SignOutPressed value) signOutPressed,
  }) {
    return resetPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(ResetEmailChanged value)? resetEmailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SignInPressed value)? signInPressed,
    TResult Function(ResetPressed value)? resetPressed,
    TResult Function(SignOutPressed value)? signOutPressed,
  }) {
    return resetPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(ResetEmailChanged value)? resetEmailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SignInPressed value)? signInPressed,
    TResult Function(ResetPressed value)? resetPressed,
    TResult Function(SignOutPressed value)? signOutPressed,
    required TResult orElse(),
  }) {
    if (resetPressed != null) {
      return resetPressed(this);
    }
    return orElse();
  }
}

abstract class ResetPressed implements LoginEvent {
  const factory ResetPressed() = _$ResetPressed;
}

/// @nodoc
abstract class $SignOutPressedCopyWith<$Res> {
  factory $SignOutPressedCopyWith(
          SignOutPressed value, $Res Function(SignOutPressed) then) =
      _$SignOutPressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignOutPressedCopyWithImpl<$Res> extends _$LoginEventCopyWithImpl<$Res>
    implements $SignOutPressedCopyWith<$Res> {
  _$SignOutPressedCopyWithImpl(
      SignOutPressed _value, $Res Function(SignOutPressed) _then)
      : super(_value, (v) => _then(v as SignOutPressed));

  @override
  SignOutPressed get _value => super._value as SignOutPressed;
}

/// @nodoc

class _$SignOutPressed implements SignOutPressed {
  const _$SignOutPressed();

  @override
  String toString() {
    return 'LoginEvent.signOutPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SignOutPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String emailStr) resetEmailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function() signInPressed,
    required TResult Function() resetPressed,
    required TResult Function() signOutPressed,
  }) {
    return signOutPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String emailStr)? resetEmailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function()? signInPressed,
    TResult Function()? resetPressed,
    TResult Function()? signOutPressed,
  }) {
    return signOutPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String emailStr)? resetEmailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function()? signInPressed,
    TResult Function()? resetPressed,
    TResult Function()? signOutPressed,
    required TResult orElse(),
  }) {
    if (signOutPressed != null) {
      return signOutPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(ResetEmailChanged value) resetEmailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(SignInPressed value) signInPressed,
    required TResult Function(ResetPressed value) resetPressed,
    required TResult Function(SignOutPressed value) signOutPressed,
  }) {
    return signOutPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(ResetEmailChanged value)? resetEmailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SignInPressed value)? signInPressed,
    TResult Function(ResetPressed value)? resetPressed,
    TResult Function(SignOutPressed value)? signOutPressed,
  }) {
    return signOutPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(ResetEmailChanged value)? resetEmailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SignInPressed value)? signInPressed,
    TResult Function(ResetPressed value)? resetPressed,
    TResult Function(SignOutPressed value)? signOutPressed,
    required TResult orElse(),
  }) {
    if (signOutPressed != null) {
      return signOutPressed(this);
    }
    return orElse();
  }
}

abstract class SignOutPressed implements LoginEvent {
  const factory SignOutPressed() = _$SignOutPressed;
}

/// @nodoc
class _$LoginStateTearOff {
  const _$LoginStateTearOff();

  _LoginState call(
      {required Email email,
      required Email reset,
      required Password password,
      required bool showErrorMessages,
      required bool isSubmitting,
      required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption}) {
    return _LoginState(
      email: email,
      reset: reset,
      password: password,
      showErrorMessages: showErrorMessages,
      isSubmitting: isSubmitting,
      authFailureOrSuccessOption: authFailureOrSuccessOption,
    );
  }
}

/// @nodoc
const $LoginState = _$LoginStateTearOff();

/// @nodoc
mixin _$LoginState {
  Email get email => throw _privateConstructorUsedError;
  Email get reset => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginStateCopyWith<LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res>;
  $Res call(
      {Email email,
      Email reset,
      Password password,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res> implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  final LoginState _value;
  // ignore: unused_field
  final $Res Function(LoginState) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? reset = freezed,
    Object? password = freezed,
    Object? showErrorMessages = freezed,
    Object? isSubmitting = freezed,
    Object? authFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email,
      reset: reset == freezed
          ? _value.reset
          : reset // ignore: cast_nullable_to_non_nullable
              as Email,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$LoginStateCopyWith<$Res> implements $LoginStateCopyWith<$Res> {
  factory _$LoginStateCopyWith(
          _LoginState value, $Res Function(_LoginState) then) =
      __$LoginStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Email email,
      Email reset,
      Password password,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class __$LoginStateCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements _$LoginStateCopyWith<$Res> {
  __$LoginStateCopyWithImpl(
      _LoginState _value, $Res Function(_LoginState) _then)
      : super(_value, (v) => _then(v as _LoginState));

  @override
  _LoginState get _value => super._value as _LoginState;

  @override
  $Res call({
    Object? email = freezed,
    Object? reset = freezed,
    Object? password = freezed,
    Object? showErrorMessages = freezed,
    Object? isSubmitting = freezed,
    Object? authFailureOrSuccessOption = freezed,
  }) {
    return _then(_LoginState(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email,
      reset: reset == freezed
          ? _value.reset
          : reset // ignore: cast_nullable_to_non_nullable
              as Email,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_LoginState implements _LoginState {
  const _$_LoginState(
      {required this.email,
      required this.reset,
      required this.password,
      required this.showErrorMessages,
      required this.isSubmitting,
      required this.authFailureOrSuccessOption});

  @override
  final Email email;
  @override
  final Email reset;
  @override
  final Password password;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption;

  @override
  String toString() {
    return 'LoginState(email: $email, reset: $reset, password: $password, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, authFailureOrSuccessOption: $authFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoginState &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.reset, reset) ||
                const DeepCollectionEquality().equals(other.reset, reset)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(reset) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(authFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$LoginStateCopyWith<_LoginState> get copyWith =>
      __$LoginStateCopyWithImpl<_LoginState>(this, _$identity);
}

abstract class _LoginState implements LoginState {
  const factory _LoginState(
      {required Email email,
      required Email reset,
      required Password password,
      required bool showErrorMessages,
      required bool isSubmitting,
      required Option<Either<AuthFailure, Unit>>
          authFailureOrSuccessOption}) = _$_LoginState;

  @override
  Email get email => throw _privateConstructorUsedError;
  @override
  Email get reset => throw _privateConstructorUsedError;
  @override
  Password get password => throw _privateConstructorUsedError;
  @override
  bool get showErrorMessages => throw _privateConstructorUsedError;
  @override
  bool get isSubmitting => throw _privateConstructorUsedError;
  @override
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LoginStateCopyWith<_LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}
