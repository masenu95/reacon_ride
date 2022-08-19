import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reacon_customer/application/auth/signin/login_bloc.dart';
import 'package:reacon_customer/presentation/core/theme/colors.dart';

class PasswordReset extends StatelessWidget {
  const PasswordReset({Key? key}) : super(key: key);
  static const routeName = 'password';

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginBloc, LoginState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Scaffold(

          appBar: AppBar(
            automaticallyImplyLeading: true,
            title: Text('Password Reset', style: Theme
                .of(context)
                .textTheme
                .caption!
                .copyWith(fontSize: 16.7),),

          ),
          body: ListView(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 100),
            children: [
              Text(
                'Email Your Email',
                style: Theme.of(context).textTheme.headline5,
              ),
              SizedBox(height: 20,),

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

                  ),
                  autocorrect: false,
                  onChanged: (value) =>context.read<LoginBloc>().add(LoginEvent.resetEmailChanged(value),),

              ),
              GestureDetector(
                onTap: () =>context.read<LoginBloc>().add(LoginEvent.resetPressed()),

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
                      state.isSubmitting ? SizedBox(
                        height: 20,
                        width: 20,
                        child: CircularProgressIndicator(
                          color: kWhiteColor,
                          strokeWidth: 3,

                        ),
                      ) : Icon(
                        Icons.send_to_mobile,
                        size: 20,
                        color: kWhiteColor,
                      ),
                      SizedBox(width: 6,),

                      Text('Password Reset', style: TextStyle(color: kWhiteColor),)
                    ],
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
