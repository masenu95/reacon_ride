import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reacon_customer/application/track/track_bloc.dart';
import 'package:reacon_customer/presentation/core/theme/colors.dart';
import 'package:reacon_customer/presentation/core/theme/theme.dart';
import 'package:reacon_customer/presentation/order/order_track.dart';

class OrderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Orders', style: Theme.of(context).textTheme.bodyText1),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 51.0,
            padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
            color: Theme.of(context).cardColor,
            child: Text(
              'ORDER(S) IN PROCESS',
              style: Theme.of(context).textTheme.headline6!.copyWith(
                  color: Color(0xff99a596),
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.67),
            ),
          ),
          GestureDetector(
            onTap: () {
              context.read<TrackBloc>().add(TrackEvent.currentLocation());
              Navigator.pushNamed(
                context,
                OrderTrack.routeName,
              );
            },
            child: Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: FadedScaleAnimation(
                    Image.asset(
                      'images/Restaurants/Layer 1.png',
                      scale: 6,
                    ),
                  ),
                ),
                Expanded(
                  child: ListTile(
                    title: Text(
                      'Order No 673',
                      style: Theme.of(context)
                          .textTheme
                          .caption!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      '20 June, 11:35am',
                      style: Theme.of(context)
                          .textTheme
                          .headline6!
                          .copyWith(fontSize: 11.7, color: Color(0xffc1c1c1)),
                    ),
                    trailing: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          'Pickup Arranged',
                          style: orderMapAppBarTextStyle.copyWith(
                              color: kMainColor),
                        ),
                        SizedBox(height: 7.0),
                        Text(
                          ' 2,100 TZS ',
                          style: Theme.of(context)
                              .textTheme
                              .headline6!
                              .copyWith(
                                  fontSize: 11.7,
                                  letterSpacing: 0.06,
                                  color: Color(0xffc1c1c1)),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Divider(
            color: Theme.of(context).cardColor,
            thickness: 1.0,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 80.0),
            child: Text(
              'Sandwich  x1',
              style: Theme.of(context)
                  .textTheme
                  .caption!
                  .copyWith(fontSize: 12.0, letterSpacing: 0.05),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 5.0),
            child: Text(
              'Chips Chicken  x1',
              style: Theme.of(context)
                  .textTheme
                  .caption!
                  .copyWith(fontSize: 12.0, letterSpacing: 0.05),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 80.0),
            child: Text(
              'Juice  x1',
              style: Theme.of(context)
                  .textTheme
                  .caption!
                  .copyWith(fontSize: 12.0, letterSpacing: 0.05),
            ),
          ),
          SizedBox(
            height: 8.0,
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: FadedScaleAnimation(
                  Image.asset(
                    'images/Restaurants/Layer 2.png',
                    scale: 6,
                  ),
                ),
              ),
              Expanded(
                child: ListTile(
                  title: Text(
                    'Order No 567',
                    style: Theme.of(context)
                        .textTheme
                        .caption!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    '20 June, 11:35am',
                    style: Theme.of(context)
                        .textTheme
                        .headline6!
                        .copyWith(fontSize: 11.7, color: Color(0xffc1c1c1)),
                  ),
                  trailing: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        'On way',
                        style:
                            orderMapAppBarTextStyle.copyWith(color: kMainColor),
                      ),
                      SizedBox(height: 7.0),
                      Text(
                        '20,000.00 TZS',
                        style: Theme.of(context).textTheme.headline6!.copyWith(
                            fontSize: 11.7,
                            letterSpacing: 0.06,
                            color: Color(0xffc1c1c1)),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          Divider(
            color: Theme.of(context).cardColor,
            thickness: 1.0,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 80.0),
            child: Text(
              'Chips chicken  x1',
              style: Theme.of(context)
                  .textTheme
                  .caption!
                  .copyWith(fontSize: 12.0, letterSpacing: 0.05),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 5.0),
            child: Text(
              'Juice  x1',
              style: Theme.of(context)
                  .textTheme
                  .caption!
                  .copyWith(fontSize: 12.0, letterSpacing: 0.05),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 80.0),
            child: Text(
              'Pizza  x1',
              style: Theme.of(context)
                  .textTheme
                  .caption!
                  .copyWith(fontSize: 12.0, letterSpacing: 0.05),
            ),
          ),
          SizedBox(
            height: 8.0,
          ),
          Container(
            height: 51.0,
            padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
            color: Theme.of(context).cardColor,
            child: Text(
              'Past Orders',
              style: Theme.of(context).textTheme.headline6!.copyWith(
                  color: Color(0xff99a596),
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.67),
            ),
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: FadedScaleAnimation(
                  Image.asset(
                    'images/Restaurants/Layer 3.png',
                    scale: 5,
                  ),
                ),
              ),
              Expanded(
                child: ListTile(
                  title: Text(
                    'Order No 120',
                    style: Theme.of(context)
                        .textTheme
                        .caption!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    '20 June, 11:35am',
                    style: Theme.of(context)
                        .textTheme
                        .headline6!
                        .copyWith(fontSize: 11.7, color: Color(0xffc1c1c1)),
                  ),
                  trailing: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        'Delivered',
                        style: Theme.of(context)
                            .textTheme
                            .caption!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 7.0),
                      Text(
                        '10000 TZS',
                        style: Theme.of(context).textTheme.headline6!.copyWith(
                            fontSize: 11.7,
                            letterSpacing: 0.06,
                            color: Color(0xffc1c1c1)),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          Divider(
            color: Theme.of(context).cardColor,
            thickness: 1.0,
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsetsDirectional.only(start: 80.0),
                child: Text(
                  'Sandwich  x1',
                  style: Theme.of(context)
                      .textTheme
                      .caption!
                      .copyWith(fontSize: 12.0, letterSpacing: 0.05),
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: InkWell(
                  onTap: () => Navigator.pushNamed(context, '/'),
                  child: Text(
                    'Rate Now',
                    style: orderMapAppBarTextStyle.copyWith(color: kMainColor),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 5.0),
            child: Text(
              'Chicken  x1',
              style: Theme.of(context)
                  .textTheme
                  .caption!
                  .copyWith(fontSize: 12.0, letterSpacing: 0.05),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 80.0),
            child: Text(
              'Juice  x1',
              style: Theme.of(context)
                  .textTheme
                  .caption!
                  .copyWith(fontSize: 12.0, letterSpacing: 0.05),
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          Divider(
            color: Theme.of(context).cardColor,
            thickness: 1,
          ),
        ],
      ),
    );
  }
}
