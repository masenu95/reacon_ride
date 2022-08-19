import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:reacon_customer/application/order/order_bloc.dart';
import 'package:reacon_customer/presentation/core/format.dart';
import 'package:reacon_customer/presentation/core/shared/bottom_bar.dart';
import 'package:reacon_customer/presentation/core/theme/colors.dart';
import 'package:reacon_customer/presentation/core/widget.dart';
import 'package:reacon_customer/presentation/order/payment.dart';

class OrderDetail extends StatefulWidget {
  const OrderDetail({Key? key}) : super(key: key);
  static const routeName = '/order-detail';

  @override
  _OrderDetailState createState() => _OrderDetailState();
}

class _OrderDetailState extends State<OrderDetail> {
  int _itemCount = 0;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<OrderBloc, OrderState>(
      listener: (context, state) {
        state.order0ption.fold(
          () => null,
          (either) => either.fold(
              (failure) => FlushbarHelper.createError(
                    message: failure.map(
                      serverError: (_) => 'Unknown error try again',
                      unavailable: (_) =>
                          'Restaurant are unavailable try again later',
                    ),
                  ).show(context), (r) {
            if (r.status == 'ACCEPTED') {
              FlushbarHelper.createSuccess(
                      message:
                          'Order is accepted please make payment to continue')
                  .show(context);
            }
          }),
        );
        if (state.order.status == 'ACCEPTED') {
          FlushbarHelper.createSuccess(
                  message: 'Order is accepted please make payment to continue')
              .show(context);
        } else if (state.order.status == 'DENIED') {
          FlushbarHelper.createError(
            message: 'Request timeout try again',
          ).show(context);
        } else if (state.order.status == 'REQUESTING') {
          FlushbarHelper.createLoading(
              message: 'Requesting',
              linearProgressIndicator: LinearProgressIndicator());
        }
      },
      builder: (context, state) {

        return Scaffold(
          appBar: AppBar(
            title:
                Text('Confirm order', style: Theme.of(context).textTheme.bodyText1),
            centerTitle: true,
          ),
          body: state.order.status == 'REQUESTING' || state.loading
              ? SimpleDialog(
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 50,
                    horizontal: 30,
                  ),
                  children: <Widget>[
                      Center(
                        child: Column(children: [
                          SpinKitWave(
                            itemBuilder: (BuildContext context, int index) {
                              return DecoratedBox(
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                ),
                              );
                            },
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text("Sending request  Waiting....",
                              style: Theme.of(context).textTheme.bodyText1),
                        ]),
                      )
                    ])
              :  FadedSlideAnimation(
            Stack(
              children: <Widget>[
                ListView(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(20.0),
                      color: Theme.of(context).cardColor,
                      child: Text('Payment Detail'.toUpperCase(),
                          style: Theme.of(context).textTheme.headline6!.copyWith(
                              color: Color(0xff616161), letterSpacing: 0.67)),
                    ),
                    cartOrderItemListTile(
                        'images/ic_veg.png',
                        context,
                        state.order.foodName,
                        FormatData().formatCurrency(state.order.price),
                        state.order.quantity,
                        context.read<OrderBloc>().add(OrderEvent.orderUpdateQuantity('plus')),
                        context.read<OrderBloc>().add(OrderEvent.orderUpdateQuantity('minus'))

                            ),

                    Divider(
                      color: Theme.of(context).cardColor,
                      thickness: 1.0,
                    ),

                    Container(
                      height: 53.3,
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      color: Theme.of(context).scaffoldBackgroundColor,
                      child: Row(
                        children: <Widget>[
                          Image.asset(
                            'images/ic_promocode.png',
                            height: 16.0,
                            width: 16.7,
                          ),
                          SizedBox(
                            width: 17.3,
                          ),
                          Text('Enter Promo code',
                              style: Theme.of(context).textTheme.caption!.copyWith(
                                  fontSize: 11.7, color: Color(0xffb2b2b2))),
                          Spacer(),
                          Text('Apply',
                              style: Theme.of(context)
                                  .textTheme
                                  .caption!
                                  .copyWith(color: kMainColor))
                        ],
                      ),
                    ),
                    Divider(
                      color: Theme.of(context).cardColor,
                      thickness: 6.7,
                    ),
                    Container(
                      width: double.infinity,
                      padding:
                      EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
                      child: Text(
                          'Payment Info'.toUpperCase(),
                          style: Theme.of(context)
                              .textTheme
                              .headline6!
                              .copyWith(color: kDisabledColor)),
                      color: Theme.of(context).scaffoldBackgroundColor,
                    ),
                    Container(
                      color: Theme.of(context).scaffoldBackgroundColor,
                      padding:
                      EdgeInsets.symmetric(vertical: 4.0, horizontal: 20.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              'Sub Total',
                              style: Theme.of(context).textTheme.caption,
                            ),
                            Text(
                             ' ${FormatData().formatCurrency(state.order.price)} TZS',
                              style: Theme.of(context).textTheme.caption,
                            ),
                          ]),
                    ),
                    Divider(
                      color: Theme.of(context).cardColor,
                      thickness: 1.0,
                    ),
                    Container(
                      color: Theme.of(context).scaffoldBackgroundColor,
                      padding:
                      EdgeInsets.symmetric(vertical: 4.0, horizontal: 20.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              'Transport Fee',
                              style: Theme.of(context).textTheme.caption,
                            ),
                            Text(
                              '${FormatData().formatCurrency(double.parse(state.order.transport.toString()))} TZS',
                              style: Theme.of(context).textTheme.caption,
                            ),
                          ]),
                    ),
                    Divider(
                      color: Theme.of(context).cardColor,
                      thickness: 1.0,
                    ),
                    Container(
                      color: Theme.of(context).scaffoldBackgroundColor,
                      padding:
                      EdgeInsets.symmetric(vertical: 4.0, horizontal: 20.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              'Amount to Pay',
                              style: Theme.of(context)
                                  .textTheme
                                  .caption!
                                  .copyWith(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '${FormatData().formatCurrency(state.order.price + state.order.transport)} TZS',
                              style: Theme.of(context).textTheme.caption,
                            ),
                          ]),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      height: 252.0,
                      color: Theme.of(context).cardColor,
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Container(
                        color: Theme.of(context).scaffoldBackgroundColor,
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: 20.0, right: 20.0, top: 13.0, bottom: 13.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.location_on,
                                    color: Color(0xffc4c8c1),
                                    size: 13.3,
                                  ),
                                  SizedBox(
                                    width: 11.0,
                                  ),
                                  Text('Delivery To',
                                      style: Theme.of(context)
                                          .textTheme
                                          .caption!
                                          .copyWith(
                                          color: kDisabledColor,
                                          fontWeight: FontWeight.bold)),

                                  Spacer(),
                                ],
                              ),
                              SizedBox(
                                height: 13.0,
                              ),
                              Text(
                                  state.address,
                                  style: Theme.of(context)
                                      .textTheme
                                      .caption!
                                      .copyWith(
                                      fontSize: 11.7, color: Color(0xffb7b7b7)))
                            ],
                          ),
                        ),
                      ),
                      BottomBar(
                        text: 'Pay' + " ${FormatData().formatCurrency(state.order.price + state.order.transport)} TZS",
                        onTap: () =>
                            Navigator.pushNamed(context, PaymentPage.routeName),
                      ),
                    ],
                  ),
                ),
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


