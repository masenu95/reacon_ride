part of 'register_bloc.dart';

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState({
    required Name name,
    required bool showError,
    required Email email,
    required Phone phone,
    required Password password,
    required Password repassword,
    required String repasswordError,
     required bool isSubmitting,
    required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
  }) = _RegisterState;

  factory RegisterState.initial() => RegisterState(
        name: Name(''),
        email: Email(''),
        showError: false,
        phone: Phone(''),
        password: Password(''),
        repassword: Password(''),
        isSubmitting: false,
        authFailureOrSuccessOption: none(), 
        repasswordError: '',
      );
}
