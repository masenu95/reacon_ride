import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reacon_customer/application/order/order_bloc.dart';
import 'package:reacon_customer/presentation/core/shared/list_tile.dart';
import 'package:reacon_customer/presentation/core/theme/colors.dart';
import 'package:reacon_customer/presentation/order/order_placed.dart';

class PaymentPage extends StatelessWidget {
  static const routeName = 'payment-page';
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<OrderBloc, OrderState>(
  listener: (context, state) {
    // TODO: implement listener
  },
  builder: (context, state) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(64.0),
        child: AppBar(
          automaticallyImplyLeading: true,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Select Payment methods',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              SizedBox(
                height: 8.0,
              ),
              Text(
                'Amount to pay ${state.order.price} TZS',
                style: Theme.of(context)
                    .textTheme
                    .headline6!
                    .copyWith(color: kDisabledColor),
              ),
            ],
          ),
        ),
      ),
      body: FadedSlideAnimation(
        ListView(
          children: <Widget>[
            Divider(
              color: Theme.of(context).cardColor,
              thickness: 6.7,
            ),
            ListTile(
              onTap: () => Navigator.pushNamed(context, '/'),
              contentPadding:
              EdgeInsets.symmetric(vertical: 4.0, horizontal: 20.0),
              leading: Image.asset(
                'images/payment/payment_cod.png',
                height: 25.3,
              ),
              title: Text(
                'Wallet',
                style: Theme.of(context)
                    .textTheme
                    .headline4!
                    .copyWith(fontWeight: FontWeight.w500, letterSpacing: 0.07),
              ),
              trailing: Text(
                '500K TZS',
                style: Theme.of(context)
                    .textTheme
                    .caption!
                    .copyWith(color: kDisabledColor),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
              color: Theme.of(context).cardColor,
              child: Text('CARD'.toUpperCase(),
                  style: Theme.of(context).textTheme.caption!.copyWith(
                      color: kDisabledColor,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.67)),
            ),
            BuildListTile(
              onTap: () => Navigator.pushNamed(context, OrderPlaced.routeName),
              image: 'images/payment/payment_card.png',
              text: 'Credit Card',
            ),
            BuildListTile(
              onTap: () => Navigator.pushNamed(context, '/'),
              image: 'images/payment/payment_card.png',
              text: 'Debit Card',
            ),



            Container(
              height: MediaQuery.of(context).size.height/2+MediaQuery.of(context).size.height/10,
              color: Theme.of(context).cardColor,
            )
          ],
        ),
        beginOffset: Offset(0, 0.3),
        endOffset: Offset(0, 0),
        slideCurve: Curves.linearToEaseOut,
      ),
    );
  },
);
  }
}
