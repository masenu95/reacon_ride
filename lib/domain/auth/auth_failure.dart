import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_failure.freezed.dart';

@freezed
abstract class AuthFailure with _$AuthFailure {
  // Serves as a "catch all" failure if we don't know what exactly went wrong
  const factory AuthFailure.serverError() = ServerError;

  //password error or sign object failure
  const factory AuthFailure.invalidUserAndPasswordCombination() =
      InvalidUserAndPasswordCombination;

  //password error or sign object failure
  const factory AuthFailure.emailAlreadyExists() = EmailAlreadyExists;

  //password error or sign object failure
  const factory AuthFailure.userDisabled() = UserDisabled;

  //operation not allowed
  const factory AuthFailure.operationNotAllowed() = OperationNotAllowed;

  //operation not allowed
  const factory AuthFailure.tooManyRequests() = TooManyRequests;

  //unauthenticated request
  const factory AuthFailure.unauthenticated() = Unauthenticated;
}
