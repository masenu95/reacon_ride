part of 'auth_bloc.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState({
    required String authStatus,
    required UserModel user,
  }) = _AuthState;

  factory AuthState.initial() => AuthState(
        authStatus: 'unknown',
        user: UserModel(
          username: '',
          name: '',
          phone: '',
          email: '',
          uid: '',
        ),
      );
}
