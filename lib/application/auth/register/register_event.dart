part of 'register_bloc.dart';

@freezed
class RegisterEvent with _$RegisterEvent {
  const factory RegisterEvent.emailChanged(String emailStr) = EmailChanged;
  const factory RegisterEvent.passwordChanged(String passwordStr) =
      PasswordChanged;
  const factory RegisterEvent.repasswordChanged(String passwordStr) =
    RepasswordChanged;
  const factory RegisterEvent.nameChanged(String nameStr) = NameChanged;
  const factory RegisterEvent.phoneChanged(String phoneStr) = PhoneChanged;
  const factory RegisterEvent.submit() = Submit;
}
