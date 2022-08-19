import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reacon_customer/application/order/order_bloc.dart';
import 'package:reacon_customer/presentation/core/shared/bottom_bar.dart';
import 'package:reacon_customer/presentation/core/theme/colors.dart';
import 'package:reacon_customer/presentation/core/theme/theme.dart';
import 'package:reacon_customer/presentation/food/travel_bus.dart';
import 'package:reacon_customer/presentation/food/travel_food.dart';
import 'package:reacon_customer/presentation/food/travel_route.dart';

class TravelInfo extends StatefulWidget {
  const TravelInfo({Key? key}) : super(key: key);
  static const routeName = 'travel-info';

  @override
  _TravelInfoState createState() => _TravelInfoState();
}

class _TravelInfoState extends State<TravelInfo> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<OrderBloc, OrderState>(
  listener: (context, state) {
    // TODO: implement listener
  },
  builder: (context, state) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Travel information',
            style: inputTextStyle.copyWith(
                fontWeight: FontWeight.bold,
                color: Theme.of(context).secondaryHeaderColor),
          ),
        ),
      ),
      body: FadedSlideAnimation(
         Stack(
           children: [
             ListView(
              padding: EdgeInsets.symmetric(
                vertical: 40,
                horizontal: 20,
              ),
              children: [
                Text(
                  'Pick Your Route',
                  style: inputTextStyle.copyWith(
                      fontWeight: FontWeight.w800,
                      letterSpacing: 2,
                      fontSize: 20,
                      color: Theme.of(context).secondaryHeaderColor),
                ),
                SizedBox(
                  height: 35,
                ),
                Form(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          context.read<OrderBloc>().add(OrderEvent.getRoutes());
                          Navigator.pushNamed(context, TravelRoute.routeName);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(color: kHintColor),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                padding:EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                                child: Text(
                                  state.route.name.isNotEmpty?state.route.name.toUpperCase():'Choose Route',
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward_ios_outlined,
                                size: 14,
                              ),
                            ],
                          ),
                        ),
                      ),

                      SizedBox(
                        height: 35,
                      ),
                      GestureDetector(
                        onTap: () {
                          context.read<OrderBloc>().add(OrderEvent.getBuses());
                          Navigator.pushNamed(context, TravelBus.routeName);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(color: kHintColor),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                padding:EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                                child: Text(
                                  state.bus.name.isNotEmpty?state.bus.name.toUpperCase():'Choose Bus',
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward_ios_outlined,
                                size: 14,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      Text(
                        'Addition Travel Info',
                        style: inputTextStyle.copyWith(
                            fontWeight: FontWeight.w700,
                            fontSize: 19,
                            color: Theme.of(context).secondaryHeaderColor),
                      ),
                      SizedBox(
                        height: 35,
                      ),
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
                            Icons.person,
                          ),
                          labelText: 'Full Name',
                          hintText: 'Full Name',
                          errorText: null,
                        ),
                        autocorrect: false,
                        onChanged: (value) {},
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width / 2 - 30,
                            child: TextFormField(
                               style:Theme.of(context).textTheme.bodyText2!.copyWith(
                              fontSize: 14.0,
                              height: 0.7,
                            ),
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                prefixIcon: const Icon(
                                  Icons.bus_alert,
                                ),
                                labelText: 'Bus Number',
                                hintText: 'Bus Number',
                                errorText: null,
                              ),
                              autocorrect: false,
                              onChanged: (value) {},
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 2 - 30,
                            child: TextFormField(
                               style:Theme.of(context).textTheme.bodyText2!.copyWith(
                              fontSize: 14.0,
                              height: 0.7,
                            ),
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                prefixIcon: const Icon(
                                  Icons.airline_seat_recline_extra,
                                ),
                                labelText: 'Seat Number',
                                hintText: 'Seat Number',
                                errorText: null,
                              ),
                              autocorrect: false,
                              onChanged: (value) {},
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 55,
                      ),

                    ],
                  ),
                ),
              ],
        ),
             Positioned(child:  BottomBar(
               text: 'Save',
               onTap: () {
                 Navigator.pushNamed(context, TravelFoods.routeName);
               },
             ),
               bottom: 0,
               left: 0,
               right: 0,
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
