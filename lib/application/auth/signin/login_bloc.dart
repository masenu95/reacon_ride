import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reacon_customer/domain/auth/auth_failure.dart';
import 'package:reacon_customer/domain/auth/i_auth_facade.dart';
import 'package:reacon_customer/domain/auth/value_objects.dart';
import 'package:injectable/injectable.dart';

part 'login_bloc.freezed.dart';

part 'login_event.dart';

part 'login_state.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final IAuthFacade _authFacade;

  LoginBloc(this._authFacade) : super(LoginState.initial());

  @override
  Stream<LoginState> mapEventToState(
    LoginEvent event,
  ) async* {
    yield* event.map(
      emailChanged: (e) async* {
        yield state.copyWith(
          email: Email(e.emailStr),
          authFailureOrSuccessOption: none(),
        );
      },
      passwordChanged: (e) async* {
        yield state.copyWith(
          password: Password(e.passwordStr),
          authFailureOrSuccessOption: none(),
        );
      },
      signInPressed: (e) async* {
        final isEmailValid = state.email.isValid();
        final isPasswordValid = state.password.isValid();
        Either<AuthFailure, Unit> failureOrSuccess;
        print(isPasswordValid && isEmailValid);
        if (isPasswordValid && isEmailValid) {
          yield state.copyWith(
            isSubmitting: true,
            authFailureOrSuccessOption: none(),
          );

          failureOrSuccess = await _authFacade.signInWithEmail(
            email: state.email,
            password: state.password,
          );



          yield state.copyWith(
            isSubmitting: false,
            showErrorMessages: true,
            authFailureOrSuccessOption: optionOf(failureOrSuccess),
          );
        } else {
          yield state.copyWith(
            isSubmitting: false,
            showErrorMessages: true,
          );
        }
      },
      signOutPressed: (e) async* {
        yield state.copyWith(isSubmitting: true);
        await _authFacade.logout();
        yield state.copyWith(isSubmitting: false);
      }, resetEmailChanged: (e) async*{
        yield state.copyWith(
          reset: Email(e.emailStr),
        );
    }, resetPressed: (e) async*{
        if(state.reset.isValid()){
              yield state.copyWith(
        isSubmitting: true
      );
              await _authFacade.passwordReset(email: state.reset);

              yield state.copyWith(
                  isSubmitting: false
              );
        }


    },
    );
  }
}
