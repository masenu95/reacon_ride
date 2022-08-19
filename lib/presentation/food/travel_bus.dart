import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reacon_customer/application/order/order_bloc.dart';
import 'package:reacon_customer/domain/order/bus.dart';

class TravelBus extends StatelessWidget {
  const TravelBus({Key? key}) : super(key: key);
  static const routeName = 'travel-bus';
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OrderBloc, OrderState>(
        builder: (context, state) {
          print(state.buses.length);
          return Scaffold(
            appBar: AppBar(

              elevation: 4,
              title: const Text(
                'Choose route',
                style: TextStyle(
                    fontWeight: FontWeight.normal, fontSize: 18, wordSpacing: 1),
              ),
              centerTitle: true,
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.search_sharp),
                ),
              ],
            ),
            body: FadedSlideAnimation(
             state.buses.isNotEmpty
                  ? ListView.builder(
                padding: EdgeInsets.symmetric(vertical: 30),
                itemCount: state.buses.length,
                itemBuilder: (BuildContext context, int index) =>
                    card(context, state.buses[index], index),
              )
                  : const Center(
                child: Text('No data'),
              ),
              beginOffset: Offset(0, 0.3),
              endOffset: Offset(0, 0),
              slideCurve: Curves.linearToEaseOut,
            ),
          );
        });

  }
}

Widget card(BuildContext context, BusModel bus, int index) {
  return BlocBuilder<OrderBloc,OrderState>(
    builder: (context, state) {
      return InkWell(
        onTap: () {
          context.read<OrderBloc>().add(OrderEvent.busesChange(bus));
          Navigator.pop(context);
        },
        child: Card(
          margin: const EdgeInsets.all(0.15),
          child: Container(
            height: 60,
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 5,
            ),
            child: Row(
              children: [
                Text('${(index + 1).toString()}.'),
                const SizedBox(
                  width: 30,
                ),
                Text(bus.name.toUpperCase()),
              ],
            ),
          ),
        ),
      );
    },
  );
}

