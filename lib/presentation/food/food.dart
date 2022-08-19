import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reacon_customer/application/food/food_bloc.dart';
import 'package:reacon_customer/application/order/order_bloc.dart';
import 'package:reacon_customer/presentation/core/format.dart';
import 'package:reacon_customer/presentation/core/shared/bottom_bar.dart';
import 'package:reacon_customer/presentation/core/theme/colors.dart';
import 'package:reacon_customer/presentation/core/theme/theme.dart';
import 'package:reacon_customer/presentation/order/order_detail.dart';
import 'package:intl/intl.dart';

class FoodPage extends StatefulWidget {
  const FoodPage({Key? key}) : super(key: key);
  static const routeName = '/food';

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FoodBloc, FoodState>(
      builder: (context, state) {
        String? value = 'Home';
        return Scaffold(
          appBar: AppBar(
            leading: Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Icon(
                Icons.location_on,
                color: kMainColor,
              ),
            ),
            title: DropdownButton(
              value: value,
              icon: Icon(
                Icons.keyboard_arrow_down,
                color: kMainColor,
              ),
              iconSize: 24.0,
              elevation: 16,
              style: inputTextStyle.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).secondaryHeaderColor),
              underline: Container(
                height: 0,
              ),
              onChanged: (String? newValue) {
                setState(() {
                  value = newValue;
                });
                if (value == 'setLocation')
                  Navigator.pushNamed(context, 'locationPage');
              },
              items: <String?>['Home', 'office', 'other', 'setLocation']
                  .map<DropdownMenuItem<String>>((address) {
                return DropdownMenuItem<String>(
                  value: address,
                  child: Text(
                    address!,
                    overflow: TextOverflow.ellipsis,
                  ),
                );
              }).toList(),
            ),
            actions: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 6.0),
                child: IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    /*.......*/
                  },
                ),
              ),
            ],
          ),
          body: FadedSlideAnimation(
            Stack(
              children: [
                ListView(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(state.food.image),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      height: MediaQuery.of(context).size.height / 3,
                      width: MediaQuery.of(context).size.width,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Column(

                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [

                          Row(

                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                FormatData().capitalize(state.food.title),
                                style: Theme.of(context)
                                    .textTheme
                                    .headline4
                                    ?.copyWith(fontSize: 16),
                              ),
                              Text(
                                '${FormatData().formatCurrency(double.parse(state.food.price))} TZS',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1
                                    ?.copyWith(fontSize: 20),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),

                          Container(

                            child: Text(
                              FormatData().capitalize(state.food.description),
                              style: Theme.of(context).textTheme.bodyText2,
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text('Addition Information',
                              style: Theme.of(context).textTheme.caption!.copyWith(
                                  color: kDisabledColor,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 0.67)),
                         SizedBox(height: 25,),

                         Container(
                           padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                           color: Theme.of(context).cardColor,
                           child: Column(
                             children: [
                               Row(
                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                 children: [
                                   Text('Category',style: Theme.of(context).textTheme.bodyText1,),
                                   Text(FormatData().capitalize(state.food.category),style: Theme.of(context).textTheme.bodyText2,),

                                 ],
                               ),
                               SizedBox(height: 10,),
                               Row(
                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                 children: [
                                   Text('Section',style: Theme.of(context).textTheme.bodyText1,),
                                   Text(FormatData().capitalize(state.food.section,),style: Theme.of(context).textTheme.bodyText2,),

                                 ],
                               ),

                             ],
                           ),
                         ),
                          SizedBox(
                            height:25 ,
                          ),
                          Center(
                            child: Text(
                              ' ${FormatData().formatCurrency(double.parse(state.food.price))} TZS',
                              style: Theme.of(context).textTheme.headline3?.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(height: 100,),
                        ],
                      ),
                    ),



                  ],
                ),
                Positioned(child:  BottomBar(
                  text: 'Make Order',
                  onTap: () {
                    context
                        .read<OrderBloc>()
                        .add(OrderEvent.createOrder(state.food));
                    Navigator.pushNamed(context, OrderDetail.routeName);
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
