import 'package:animation_wrappers/Animations/faded_slide_animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reacon_customer/application/food/food_bloc.dart';
import 'package:reacon_customer/presentation/core/format.dart';

import 'package:reacon_customer/presentation/core/widget.dart';
import 'package:reacon_customer/presentation/food/food.dart';


class TravelFoods extends StatelessWidget {
  static const routeName = 'travel-food';
  @override
  Widget build(BuildContext context) {
    String? value = 'Home';
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Travel Foods',
          style: Theme.of(context).textTheme.bodyText2,
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
      body: BlocBuilder<FoodBloc, FoodState>(
        builder: (context, state) {
          return Container(
            height: MediaQuery.of(context).size.height,
            margin: EdgeInsets.only(left: 20, top: 40),
            child: !state.loading
                ? state.foodsCat.length > 0
                    ? FadedSlideAnimation(
                        GridView.builder(
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 1,
                            mainAxisExtent: 140,
                          ),
                          itemCount: state.foodsCat.length,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          physics: BouncingScrollPhysics(),
                          itemBuilder: (BuildContext ctx, index) {
                            return quickGrid(
                              width: MediaQuery.of(context).size.width / 2 -
                                  MediaQuery.of(context).size.width / 25,
                              price: state.foodsCat[index].price,
                              context: context,
                              name: FormatData()
                                  .capitalize(state.foodsCat[index].title),
                              image: state.foodsCat[index].image,
                              category: FormatData()
                                  .capitalize(state.foodsCat[index].category),
                              onTap: () {
                                context.read<FoodBloc>().add(
                                      FoodEvent.getFood(state.foodsCat[index]),
                                    );
                                Navigator.pushNamed(
                                    context, FoodPage.routeName);
                              },
                            );
                          },
                        ),
                        beginOffset: Offset(0, 0.3),
                        endOffset: Offset(0, 0),
                        slideCurve: Curves.linearToEaseOut,
                      )
                    : Center(
                        child: Text('No content'),
                      )
                : Center(
                    child: CircularProgressIndicator(),
                  ),
          );
        },
      ),
    );
  }
}
