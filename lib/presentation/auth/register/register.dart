import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reacon_customer/application/auth/register/register_bloc.dart';
import 'package:reacon_customer/presentation/auth/signin/sigin.dart';
import 'package:reacon_customer/presentation/core/theme/colors.dart';
import 'package:reacon_customer/presentation/home/landing.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  static const routeName = '/register';

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegisterBloc, RegisterState>(
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
              () {},
              (either) => either.fold(
                (failure) {
              FlushbarHelper.createError(
                message: failure.map(

                  serverError: (_) => 'Network error try again',

                  invalidUserAndPasswordCombination: (_)  => '',
                  unauthenticated: (_) =>'Network error try again',
                  emailAlreadyExists: (_)=>'Account already exist try to login',
                  operationNotAllowed: (_)=>'',
                  tooManyRequests: (_)=>'Too many request try again later',
                  userDisabled: (_)=>'account disable contact support team',
                ),
              ).show(context);
            },
                (_) {

              Navigator.pushReplacementNamed(context, Landing.routeName);
            },
          ),
        );
      },
      builder: (context, state) {
        return Scaffold(
          appBar:AppBar(
          automaticallyImplyLeading: false,
          title: Text(
            'Register',
            style: Theme.of(context).textTheme.caption!.copyWith(fontSize: 16.7),
          ),
        ),

        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 50),
            children: [
              Text('Name'),
              SizedBox(height: 10,),
              TextFormField(
                 style:Theme.of(context).textTheme.bodyText2!.copyWith(
                              fontSize: 14.0,
                              height: 0.7,
                            ),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                  prefixIcon: const Icon(
                    Icons.person_outline,
                  ),
                  hintText: 'Name',
                  errorText:state.showError ? state.name.isValid() ?null:'invalid full name':null,

                ),
                autocorrect: false,
                onChanged: (value) =>
                    context.read<RegisterBloc>().add(
                      RegisterEvent.nameChanged(value),
                    ),

              ),
              SizedBox(height: 25,),
          Text('Email'),
          SizedBox(height: 10,),
          TextFormField(
             style:Theme.of(context).textTheme.bodyText2!.copyWith(
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
              errorText:state.showError ? state.email.isValid() ?null:'invalid email':null,
            ),
            autocorrect: false,
            onChanged: (value) =>
                context.read<RegisterBloc>().add(
                  RegisterEvent.emailChanged(value),
                ),

          ),
              SizedBox(height: 25,),
              Text('Phone'),
              SizedBox(height: 10,),
              TextFormField(
                 style:Theme.of(context).textTheme.bodyText2!.copyWith(
                              fontSize: 14.0,
                              height: 0.7,
                            ),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                  prefixIcon: const Icon(
                    Icons.person_outline,
                  ),
                  hintText: 'Phone',
                  errorText:state.showError ? state.phone.isValid() ?null:'invalid phone':null,
                ),
                autocorrect: false,
                onChanged: (value) =>
                    context.read<RegisterBloc>().add(
                      RegisterEvent.phoneChanged(value),
                    ),

              ),
              SizedBox(height: 25,),
              Text('Password'),
              SizedBox(height: 10,),
          TextFormField(
             style:Theme.of(context).textTheme.bodyText2!.copyWith(
                              fontSize: 14.0,
                              height: 0.7,
                            ),
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6),
              ),
              prefixIcon: const Icon(Icons.lock_outline),
              hintText: 'Password',
              errorText:state.showError ? state.password.isValid() ?null:'short password':null,
            ),
            obscureText: true,
            onChanged: (value) =>
                context.read<RegisterBloc>().add(
                  RegisterEvent.passwordChanged(value),
                ),
          ),

              SizedBox(height: 25,),
              Text('Password confirmation'),
              SizedBox(height: 10,),
              TextFormField(
                 style:Theme.of(context).textTheme.bodyText2!.copyWith(
                              fontSize: 14.0,
                              height: 0.7,
                            ),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                  prefixIcon: const Icon(Icons.lock_outline),
                  hintText: 'Password',
                  errorText:state.showError ?state.repasswordError.isNotEmpty ? state.repasswordError:null:null,

                ),
                obscureText: true,
                onChanged: (value) =>
                    context.read<RegisterBloc>().add(
                      RegisterEvent.repasswordChanged(value),
                    ),
              ),
              GestureDetector(
                onTap: ()=>
                    context.read<RegisterBloc>().add(
                      const RegisterEvent.submit(),
                    ),

                child: Container(
                  margin: const EdgeInsets.only(top: 20),
                  height: 60,

                  decoration: BoxDecoration(
                      color: kMainColor,
                      borderRadius: BorderRadius.circular(6)),
                  child:Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      state.isSubmitting ? SizedBox(
                        height:20,
                        width: 20,
                        child: CircularProgressIndicator(
                          color: kWhiteColor,
                          strokeWidth: 3,

                        ),
                      ):  Icon(
                        Icons.lock,
                        size: 20,
                        color: kWhiteColor,
                      ),
                      SizedBox(width: 6,),

                      Text('Register',style: TextStyle(color: kWhiteColor),)
                    ],
                  ),
                ),
              ),
              SizedBox(height: 25,),
              Container(

                child: Center(
                  child: GestureDetector(
                    onTap: () =>Navigator.pushReplacementNamed(context, Login.routeName),
                    child: Text(
                      "I have account ? Login",
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
