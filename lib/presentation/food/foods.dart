import 'package:animation_wrappers/Animations/faded_slide_animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reacon_customer/application/category/category_bloc.dart';
import 'package:reacon_customer/application/food/food_bloc.dart';
import 'package:reacon_customer/presentation/core/format.dart';
import 'package:reacon_customer/presentation/core/theme/colors.dart';
import 'package:reacon_customer/presentation/core/theme/theme.dart';
import 'package:reacon_customer/presentation/core/widget.dart';
import 'package:reacon_customer/presentation/food/food.dart';
import 'package:reacon_customer/presentation/food/travel_package.dart';

class Foods extends StatefulWidget {
  const Foods({Key? key}) : super(key: key);
  static const routeName = '/foods';

  @override
  State<Foods> createState() => _FoodsState();
}

class _FoodsState extends State<Foods> {
  @override
  Widget build(BuildContext context) {
    String? value = 'Home';
    return Scaffold(
      appBar: AppBar(
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
              color: Theme
                  .of(context)
                  .secondaryHeaderColor),
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
      drawer: Drawer(
        child: FadedSlideAnimation(
          ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              BlocBuilder<FoodBloc, FoodState>(
                builder: (context, state) {
                  return DrawerHeader(
                    child: Center(
                      child: Text(
                        state.category.toUpperCase(),
                        style: TextStyle(
                          color: kCardBackgroundColor,
                          fontSize: 27,
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: kMainColor,
                    ),
                  );
                },
              ),
              BlocBuilder<FoodBloc, FoodState>(
                builder: (context, state) {
                  return ListTile(
                    title: Text('All'),
                    onTap: () {
                      context
                          .read<FoodBloc>()
                          .add(FoodEvent.getByCategory(state.category));
                      Navigator.pop(context);
                    },
                  );
                },
              ),
              BlocBuilder<CategoryBloc, CategoryState>(
                builder: (context, state) {
                  return ListView.builder(
                    padding: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                    itemCount: state.subcategories.length,
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        title: Text(state.subcategories[index].title),
                        onTap: () {
                          if (state.subcategories[index].title ==
                              'travelling package') {
                            context.read<FoodBloc>().add(
                                FoodEvent.getBySubcategory(
                                    state.subcategories[index].title));
                            Navigator.pushNamed(context, TravelInfo.routeName);
                          } else {
                            context.read<FoodBloc>().add(
                                FoodEvent.getBySubcategory(
                                    state.subcategories[index].title));
                            Navigator.pop(context);
                          }
                        },
                      );
                    },
                  );
                },
              ),
            ],
          ),
          beginOffset: Offset(0, 0.3),
          endOffset: Offset(0, 0),
          slideCurve: Curves.linearToEaseOut,
        ),
      ),
      body: BlocBuilder<FoodBloc, FoodState>(
        builder: (context, state) {
          return Container(
            height: MediaQuery
                .of(context)
                .size
                .height,
            margin: EdgeInsets.only(left: 20, top: 40),
            child: !state.loading
                ? state.foodsCat.length > 0
                ? FadedSlideAnimation(
              GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  mainAxisExtent: 140,
                ),
                itemCount: state.foodsCat.length,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                physics: BouncingScrollPhysics(),
                itemBuilder: (BuildContext ctx, index) {
                  return quickGrid(
                    width: MediaQuery
                        .of(context)
                        .size
                        .width / 2 -
                        MediaQuery
                            .of(context)
                            .size
                            .width / 25,
                    price: state.foodsCat[index].price,
                    context: context,
                    name: FormatData().capitalize(state.foodsCat[index].title),
                    image: state.foodsCat[index].image,
                    category: FormatData().capitalize(
                        state.foodsCat[index].category),
                    onTap: () {
                      context.read<FoodBloc>().add(
                        FoodEvent.getFood(state.foodsCat[index]),
                      );
                      Navigator.pushNamed(context, FoodPage.routeName);
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
