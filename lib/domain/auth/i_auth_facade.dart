import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:reacon_customer/domain/auth/user.dart';
import 'package:reacon_customer/domain/auth/value_objects.dart';

import 'auth_failure.dart';

abstract class IAuthFacade {
  Future<Either<AuthFailure, Unit>> signInWithEmail({
    required Email email,
    required Password password,
  });

  Future<Either<AuthFailure, Unit>> createUser({
    required Email email,
    required Password password,
    required Name name,
    required Phone phone,
  });

  Future<Either<AuthFailure, Unit>> changePassword({
    required Password password,
    required Password rePassword,
  });
  Future<Either<AuthFailure, UserModel>> currentUser();

  Future<void> passwordReset({
  required Email email
});

  Future<void> logout();
}
