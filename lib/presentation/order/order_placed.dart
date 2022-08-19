import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:flutter/material.dart';
import 'package:reacon_customer/presentation/core/shared/bottom_bar.dart';
import 'package:reacon_customer/presentation/core/theme/colors.dart';

class OrderPlaced extends StatelessWidget {
  static const routeName = 'order-placed';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FadedSlideAnimation(
        Column(
          children: <Widget>[
            Spacer(
              flex: 1,
            ),
            Expanded(
              flex: 4,
              child: FadedScaleAnimation(
                Image.asset(
                  'images/order_placed.png',
                  height: 265.7,
                  width: 260.7,
                ),
              ),
            ),
            Text(
             'Order Placed !!',
              style: Theme.of(context)
                  .textTheme
                  .bodyText1!
                  .copyWith(fontSize: 23.3),
            ),
            Text(
              'Thanks for choosing us for delivering your foods.',
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .subtitle2!
                  .copyWith(color: kDisabledColor),
            ),
            SizedBox(height: 10,),
            Text(
              'You can check order status in my order section.',
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .subtitle2!
                  .copyWith(color: kDisabledColor),
            ),
            Spacer(
              flex: 2,
            ),

            BottomBar(
              text: 'My Orders',
              onTap: () => Navigator.pushNamed(context,'/'),
            )
          ],
        ),
        beginOffset: Offset(0, 0.3),
        endOffset: Offset(0, 0),
        slideCurve: Curves.linearToEaseOut,
      ),
    );
  }
}
