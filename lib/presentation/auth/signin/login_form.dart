import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reacon_customer/application/auth/signin/login_bloc.dart';
import 'package:reacon_customer/presentation/auth/password/password.dart';
import 'package:reacon_customer/presentation/auth/register/register.dart';
import 'package:reacon_customer/presentation/core/theme/colors.dart';
import 'package:reacon_customer/presentation/home/home.dart';
import 'package:reacon_customer/presentation/home/landing.dart';

import '../../../application/track/track_bloc.dart';

class LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return BlocConsumer<LoginBloc, LoginState>(
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
          () {},
          (either) => either.fold(
            (failure) {
              FlushbarHelper.createError(
                message: failure.map(
                  serverError: (_) => 'Network error try again',
                  invalidUserAndPasswordCombination: (_) =>
                      'Invalid email and password combination',
                  unauthenticated: (_) => 'Network error try again',
                  emailAlreadyExists: (_) => '',
                  operationNotAllowed: (_) => '',
                  tooManyRequests: (_) => 'Too many request try again later',
                  userDisabled: (_) => 'account disable contact support team',
                ),
              ).show(context);
            },
            (_) {
              context.read<TrackBloc>().add(const TrackEvent.getNearDrivers());
              Navigator.pushReplacementNamed(context, Landing.routeName);
            },
          ),
        );
      },
      builder: (context, state) {
        return SingleChildScrollView(
          child: Form(
            child: Container(
              //sheight: height,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(children: [
                Container(
                  margin: const EdgeInsets.only(top: 100),
                  child: const Text(
                      'DIRM MOVE'), /*Image(
                    image: AssetImage('images/logo.png'),
                    height: 150,
                  ),*/
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.only(top: 50, bottom: 10),
                      width: 200,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Login',
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            width: 20,
                            child: Divider(thickness: 3),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: TextFormField(
                        style: Theme.of(context).textTheme.bodyText2!.copyWith(
                              fontSize: 14.0,
                              height: 0.7,
                            ),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6),
                          ),
                          prefixIcon: const Icon(
                            Icons.email,
                          ),
                          hintText: 'Email',
                        ),
                        autocorrect: false,
                        onChanged: (value) => context.read<LoginBloc>().add(
                              LoginEvent.emailChanged(value),
                            ),
                        validator: (_) => context
                            .read<LoginBloc>()
                            .state
                            .email
                            .value
                            .fold(
                                (f) => f.maybeMap(
                                    invalidEmail: (_) => 'Invalid email',
                                    orElse: () => null),
                                (r) => null),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: TextFormField(
                        style: Theme.of(context).textTheme.bodyText2!.copyWith(
                              fontSize: 14.0,
                              height: 0.7,
                            ),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6),
                          ),
                          prefixIcon: const Icon(Icons.lock_outline),
                          hintText: 'Password',
                        ),
                        obscureText: true,
                        onChanged: (value) => context.read<LoginBloc>().add(
                              LoginEvent.passwordChanged(value),
                            ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    GestureDetector(
                      onTap: () =>
                          Navigator.pushNamed(context, PasswordReset.routeName),
                      child: Container(
                        child: const Text('Forgot password'),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    GestureDetector(
                      onTap: () => context.read<LoginBloc>().add(
                            const LoginEvent.signInPressed(),
                          ),
                      child: Container(
                        margin: const EdgeInsets.only(top: 20),
                        height: 60,
                        decoration: BoxDecoration(
                            color: kMainColor,
                            borderRadius: BorderRadius.circular(6)),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            state.isSubmitting
                                ? SizedBox(
                                    height: 20,
                                    width: 20,
                                    child: CircularProgressIndicator(
                                      color: kWhiteColor,
                                      strokeWidth: 3,
                                    ),
                                  )
                                : Icon(
                                    Icons.lock,
                                    size: 20,
                                    color: kWhiteColor,
                                  ),
                            const SizedBox(
                              width: 6,
                            ),
                            Text(
                              'LOGIN',
                              style: TextStyle(color: kWhiteColor),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  child: GestureDetector(
                    onTap: () =>
                        Navigator.pushNamed(context, RegisterPage.routeName),
                    child: const Text(
                      "Don't have account ? Register",
                    ),
                  ),
                ),
              ]),
            ),
          ),
        );
      },
    );
  }
}
