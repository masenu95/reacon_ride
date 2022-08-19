import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:reacon_customer/application/auth/authentication/auth_bloc.dart';
import 'package:reacon_customer/application/food/food_bloc.dart';
import 'package:reacon_customer/presentation/account/setting_page.dart';
import 'package:reacon_customer/presentation/auth/signin/sigin.dart';
import 'package:reacon_customer/presentation/core/shared/list_tile.dart';
import 'package:reacon_customer/presentation/core/theme/colors.dart';

class AccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My account',
            style: Theme.of(context).textTheme.bodyText1),
        centerTitle: true,
      ),
      body: Account(),
    );
  }
}

class Account extends StatefulWidget {
  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  String? number;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(

  builder: (context, state) {
    return ListView(
      children: <Widget>[
        UserDetails(name: state.user.name,email: state.user.email,phone: state.user.phone,),
        Divider(
          color: Theme.of(context).cardColor,
          thickness: 8.0,
        ),
        BuildListTileIcons(
          icons: Icons.account_balance_wallet,
          text: 'Wallet',
          onTap: () => context.read<FoodBloc>().add(FoodEvent.getFoods()),
        ),

       /* BuildListTileIcons(
          icons: Icons.favorite,
          text: 'Favourites',
          onTap: () =>
              Navigator.pushNamed(context,'/'), // favourite
        ),*/
        BuildListTileIcons(
            icons: Icons.map,
            text: 'Terms & Conditions',
            onTap: () => Navigator.pushNamed(context, '/')),
        BuildListTileIcons(
            icons:Icons.support_agent,
            text: 'Support',
            onTap: () => Navigator.pushNamed(context, '/')),
        BuildListTileIcons(
          icons:Icons.settings,
          text: 'Settings',
          onTap: () => Navigator.pushNamed(context, Settings.routeName),
        ),
        LogoutTile(),
      ],
    );
  },
);
  }
}

class AddressTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BuildListTileIcons(
        icons: Icons.location_pin,
        text:'Saved Addresses',
        onTap: () {
          Navigator.pushNamed(context, '/');
        });
  }
}

class LogoutTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BuildListTileIcons(
      icons: Icons.logout,
      text: 'Logout',
      onTap: () {
        showDialog(
            context: context,
            barrierDismissible: false,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text('Logging Out'),
                content: Text('Are you sure?'),
                actions: <Widget>[
                  MaterialButton(
                    child: Text('No'),
                    textColor: kMainColor,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: kTransparentColor)),
                    onPressed: () => Navigator.pop(context),
                  ),
                  MaterialButton(
                      child: Text('Yes'),
                      shape: RoundedRectangleBorder(
                          side: BorderSide(color: kTransparentColor)),
                      textColor: kMainColor,
                      onPressed: () {
                   context.read<AuthBloc>().add(const AuthEvent.signOut());
                   Navigator.pushReplacementNamed(context, Login.routeName);
                      })
                ],
              );
            });
      },
    );
  }
}

class UserDetails extends StatelessWidget {
  final String name;
  final String email;
  final String phone;

  const UserDetails({Key? key, required this.name,required this.email,required this.phone}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('\n' + name,
              style: Theme.of(context).textTheme.bodyText1),
          Text('\n' + phone,
              style: Theme.of(context)
                  .textTheme
                  .subtitle2!
                  .copyWith(color: Color(0xff9a9a9a))),
          SizedBox(
            height: 5.0,
          ),
          Text(email,
              style: Theme.of(context)
                  .textTheme
                  .subtitle2!
                  .copyWith(color: Color(0xff9a9a9a))),
        ],
      ),
    );
  }
}
