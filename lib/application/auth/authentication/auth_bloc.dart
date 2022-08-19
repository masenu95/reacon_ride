import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reacon_customer/domain/auth/auth_failure.dart';
import 'package:reacon_customer/domain/auth/i_auth_facade.dart';
import 'package:reacon_customer/domain/auth/user.dart';
import 'package:injectable/injectable.dart';

part 'auth_event.dart';

part 'auth_state.dart';

part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthFacade _authFacade;

  AuthBloc(this._authFacade) : super(AuthState.initial());

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    yield* event.map(
      checkRequested: (e) async* {
        Either<AuthFailure, UserModel> failureOrSuccess;

        failureOrSuccess = await _authFacade.currentUser();
        String auth = "authenticated";
        UserModel user = UserModel(
          uid: "",
          name: "",
          username: "",
          phone: "",
          email: "",
        );
        failureOrSuccess.fold(
          (l) => auth = "unauthenticated",
          (r) => user = r,
        );
        yield state.copyWith(
          user: user,
          authStatus: auth,
        );
      },
      signOut: (e) async* {
        _authFacade.logout();
        yield state.copyWith(
          user: UserModel(uid: '', name: '', username: '', phone: '', email: ''),
          authStatus: 'unauthenticated',
        );
      },
    );
  }
}
