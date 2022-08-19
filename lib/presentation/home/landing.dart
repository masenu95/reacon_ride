import 'package:flutter/material.dart';
import 'package:reacon_customer/presentation/account/account.dart';
import 'package:reacon_customer/presentation/core/shared/animated_bottom_bar.dart';
import 'package:reacon_customer/presentation/home/home.dart';

class Landing extends StatefulWidget {

  static const routeName ='/landing';
  @override
  _LandingState createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  void onTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  static String bottomIconHome = 'images/footermenu/ic_home.png';

  static String bottomIconOrder = 'images/footermenu/ic_orders.png';

  static String bottomIconAccount = 'images/footermenu/ic_profile.png';

  @override
  Widget build(BuildContext context) {

    final List<BarItem> barItems = [
      BarItem(
        text: 'Home',
        image: bottomIconHome,
      ),
      BarItem(
        text: 'Summary',
        image: bottomIconOrder,
      ),
      BarItem(
        text: 'Account',
        image: bottomIconAccount,
      ),
    ];

    final List<Widget> _children = [
      Home(),
      Container(),
      AccountPage(),
    ];
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: AnimatedBottomBar(
          barItems: barItems,
          onBarTap: (int index) {
            setState(() {
              _currentIndex = index ;
            });
          }),
    );
  }
}
