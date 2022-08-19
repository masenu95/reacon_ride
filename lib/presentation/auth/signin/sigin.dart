import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:reacon_customer/presentation/auth/signin/login_form.dart';


class Login extends StatelessWidget {

static const routeName = '/login';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: LoginForm(),

    );
  }
}
