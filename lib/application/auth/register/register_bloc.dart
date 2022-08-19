
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reacon_customer/domain/auth/auth_failure.dart';
import 'package:reacon_customer/domain/auth/i_auth_facade.dart';
import 'package:reacon_customer/domain/auth/value_objects.dart';
import 'package:injectable/injectable.dart';

part 'register_event.dart';
part 'register_state.dart';
part 'register_bloc.freezed.dart';

@injectable
class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final IAuthFacade _authFacade;
  RegisterBloc(this._authFacade) : super(RegisterState.initial());
  @override
  Stream<RegisterState> mapEventToState(
    RegisterEvent event,
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
      nameChanged: (e) async* {
            yield state.copyWith(
            name: Name(e.nameStr),
            authFailureOrSuccessOption: none(),
          );
      },
      phoneChanged: (e) async* {
              yield state.copyWith(
            phone: Phone(e.phoneStr),
            authFailureOrSuccessOption: none(),
          );
      },
      submit: (e) async* {
        print(state.repasswordError.isEmpty);
        if(state.name.isValid() && state.email.isValid() && state.phone.isValid() && state.repasswordError.isEmpty && state.password.isValid()){

            yield state.copyWith(
              isSubmitting: true,
              authFailureOrSuccessOption: none(),
            );

            final Either<AuthFailure,Unit> result = await _authFacade.createUser(
              email: state.email, 
              password: state.password, 
              name: state.name, phone: state.phone,
              );

            print(result);

            yield state.copyWith(
              isSubmitting: false,
              authFailureOrSuccessOption: optionOf(result),
            );
        }else{
          yield state.copyWith(
            showError: true
          );
        }
         
      
      }, repasswordChanged: (e) async*{



        if(state.password.getOrCrash() != e.passwordStr){
          yield state.copyWith(
             authFailureOrSuccessOption: none(),
             repasswordError: 'password doesn\'t match',
            ); 
        }else{
          yield state.copyWith(
            repasswordError: '',
          );
        }
        },
    );
  }
}
