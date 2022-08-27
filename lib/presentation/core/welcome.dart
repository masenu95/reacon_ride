import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reacon_customer/application/auth/authentication/auth_bloc.dart';

import '../../application/track/track_bloc.dart';
import '../home/home.dart';
import '../home/landing.dart';

class Welcome extends StatelessWidget {
  static const routeName = '/welcome';
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state.authStatus == "unknown") {
        } else if (state.authStatus == "unauthenticated") {
          Navigator.pushReplacementNamed(context, '/login');
        } else if (state.authStatus == "authenticated") {
          Navigator.pushReplacementNamed(context, Landing.routeName);
        }
      },
      child: Container(
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/launch.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            Padding(
              padding: EdgeInsets.only(bottom: 150.0),
              child: Image(
                height: 40,
                width: 40,
                image: AssetImage('images/loader.gif'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
