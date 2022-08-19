import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:reacon_customer/domain/auth/auth_failure.dart';
import 'package:reacon_customer/domain/auth/i_auth_facade.dart';
import 'package:reacon_customer/domain/auth/user.dart';
import 'package:reacon_customer/domain/auth/value_objects.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IAuthFacade)
class FirebaseAuthFacade implements IAuthFacade {
  final FirebaseAuth _firebaseAuth;
  final FirebaseFirestore _firebaseFirestore;

  FirebaseAuthFacade(
    this._firebaseAuth,
    this._firebaseFirestore,
  );

  @override
  Future<Either<AuthFailure, Unit>> changePassword(
      {required Password password, required Password rePassword}) {
    // TODO: implement changePassword
    throw UnimplementedError();
  }

  @override
  Future<Either<AuthFailure, Unit>> createUser({
    required Email email,
    required Password password,
    required Name name,
    required Phone phone,
  }) async {
    final emailAddressStr = email.getOrCrash();
    final passwordStr = password.getOrCrash();

    try {
      final result = await _firebaseAuth.createUserWithEmailAndPassword(
        email: emailAddressStr,
        password: passwordStr,
      );

      User? user = result.user;
      if (user != null) {
        user.updateDisplayName(name.getOrCrash());
        await FirebaseFirestore.instance.collection('Users').doc(user.uid).set({
          'name': name.getOrCrash(),
          'phone': phone.getOrCrash(),
          'email': user.email,
          'status': 'user',
          'uid': user.uid,
          'status':'PENDING',
        });
      }
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        return left(const AuthFailure.emailAlreadyExists());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<void> logout() => Future.wait([
        _firebaseAuth.signOut(),
      ]);

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmail(
      {required Email email, required Password password}) async {
    final emailAddressStr = email.getOrCrash();
    final passwordStr = password.getOrCrash();

    try {
      await _firebaseAuth.signInWithEmailAndPassword(
        email: emailAddressStr,
        password: passwordStr,
      );
      return right(unit);
    } on FirebaseAuthException catch (e) {

      if (e.code == 'wrong-password' || e.code == 'user-not-found') {
        return left(const AuthFailure.invalidUserAndPasswordCombination());
      } else if (e.code == 'too-many-requests') {
        return left(const AuthFailure.tooManyRequests());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, UserModel>> currentUser() async {
    User? user = await _firebaseAuth.currentUser;
    if (user != null) {
      var result =
          await _firebaseFirestore.collection('Users').doc(user.uid).get();
      if (result.data() != null) {
        return right(
          UserModel.fromJson(
              json: result.data() as Map<String, dynamic>, id: result.id),
        );
      }
    }
    return left(AuthFailure.unauthenticated());
  }

  @override
  Future<void> passwordReset({required Email email}) async {
    await _firebaseAuth.sendPasswordResetEmail(email: email.getOrCrash());
  }
}
