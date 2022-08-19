part of 'login_bloc.dart';

@freezed
abstract class LoginState with _$LoginState {
  const factory LoginState({
    required Email email,
    required Email reset,
    required Password password,
    required bool showErrorMessages,
    required bool isSubmitting,
    required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
  }) = _LoginState;

  factory LoginState.initial() => LoginState(
        email: Email(''),
        password: Password(''),
        showErrorMessages: false,
        isSubmitting: false,
        reset: Email(''),
        authFailureOrSuccessOption: none(),
      );
}
