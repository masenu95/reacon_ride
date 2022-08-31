import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reacon_customer/application/auth/authentication/auth_bloc.dart';
import 'package:reacon_customer/application/auth/register/register_bloc.dart';
import 'package:reacon_customer/application/auth/signin/login_bloc.dart';
import 'package:reacon_customer/application/setting/setting_bloc.dart';
import 'package:reacon_customer/application/track/track_bloc.dart';
import 'package:reacon_customer/injection.dart';
import 'package:reacon_customer/presentation/account/setting_page.dart';
import 'package:reacon_customer/presentation/auth/password/password.dart';
import 'package:reacon_customer/presentation/auth/register/register.dart';
import 'package:reacon_customer/presentation/auth/signin/sigin.dart';
import 'package:reacon_customer/presentation/core/welcome.dart';

import 'package:reacon_customer/presentation/home/home.dart';
import 'package:reacon_customer/presentation/home/landing.dart';

import 'package:reacon_customer/presentation/track/invoice_screen.dart';
import 'package:reacon_customer/presentation/track/ride.dart';
import 'package:reacon_customer/presentation/track/search.dart';
import 'package:reacon_customer/presentation/track/test.dart';
import 'package:reacon_customer/presentation/track/track.dart';

class App extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              getIt<TrackBloc>()..add(TrackEvent.currentLocation()),
        ),
        BlocProvider(
          create: (context) =>
              getIt<AuthBloc>()..add(const AuthEvent.checkRequested()),
        ),
        BlocProvider(
          create: (context) => getIt<RegisterBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<LoginBloc>(),
        ),
        BlocProvider(
          create: (context) => SettingBloc(),
        ),
      ],
      child: BlocBuilder<SettingBloc, SettingState>(
        builder: (context, state) {
          return MaterialApp(
            title: 'Reacon customer',
            debugShowCheckedModeBanner: true,
            theme: state.theme,
            initialRoute: Welcome.routeName,
            routes: {
              Welcome.routeName: (context) => Welcome(),
              Login.routeName: (context) => Login(),
              Home.routeName: (context) => Home(),
              TrackMapDetail.routeName: (context) => TrackMapDetail(),
              Landing.routeName: (context) => Landing(),
              PasswordReset.routeName: (context) => PasswordReset(),
              RegisterPage.routeName: (context) => RegisterPage(),
              Settings.routeName: (context) => Settings(),
              SearchRoute.routeName: (context) => SearchRoute(),
              MapSample.routeName: (context) => MapSample(),
              InvoiceScreen.routeName: (context) => InvoiceScreen(),
              Ride.routeName: (context) => const Ride(),
            },
          );
        },
      ),
    );
  }
}
