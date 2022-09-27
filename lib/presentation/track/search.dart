import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reacon_customer/application/track/track_bloc.dart';
import 'package:reacon_customer/presentation/core/widget.dart';
import 'package:reacon_customer/presentation/track/track.dart';

class SearchRoute extends StatefulWidget {
  const SearchRoute({Key? key}) : super(key: key);
  static const routeName = "search-route";

  @override
  State<SearchRoute> createState() => _SearchRouteState();
}

class _SearchRouteState extends State<SearchRoute> {
  final TextEditingController fromController = TextEditingController();
  final TextEditingController toController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TrackBloc, TrackState>(
      listener: (context, state) {
        print(state.searchFrom);
        print(state.searchTo);
        if (state.searchFrom == true && state.searchTo == true) {
          context.read<TrackBloc>().add(const TrackEvent.getDirection());
          Navigator.pushNamed(context, TrackMapDetail.routeName);
        }
        if (state.searchFrom == true) {
          setState(() {
            fromController.value = TextEditingValue(
                text: state.fromPlace.featureName!,
                selection: TextSelection(
                  baseOffset: state.fromPlace.featureName!.length,
                  extentOffset: state.fromPlace.featureName!.length,
                ));
          });
        }

        if (state.searchTo == true) {
          setState(() {
            toController.value = TextEditingValue(
                text: state.toPlace.featureName!,
                selection: TextSelection(
                  baseOffset: state.toPlace.featureName!.length,
                  extentOffset: state.toPlace.featureName!.length,
                ));
          });
        }
      },
      builder: (context, state) {
        return Scaffold(
          body: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 40),
            child: Column(
              children: [
                FormFieldWidget(
                  onChange: (value) => context
                      .read<TrackBloc>()
                      .add(TrackEvent.fromLocationChange(value)),
                  text: state.from,
                  validation: (_) {
                    return null;
                  },
                  hint: 'From',
                  color: Theme.of(context).cardColor,
                  label: '',
                  controller: fromController,
                ),
                FormFieldWidget(
                  onChange: (value) => context
                      .read<TrackBloc>()
                      .add(TrackEvent.toLocationChange(value)),
                  text: state.to,
                  validation: (_) {
                    return null;
                  },
                  hint: 'Destination',
                  color: Theme.of(context).primaryColor,
                  label: '',
                  controller: toController,
                ),
                Expanded(
                  child: state.active == "from"
                      ? Column(
                          children: [
                            const SizedBox(
                              height: 10,
                            ),
                            GestureDetector(
                              onTap: () => context
                                  .read<TrackBloc>()
                                  .add(const TrackEvent.myLocation()),
                              child: const ListTile(
                                leading: Icon(
                                  Icons.my_location_sharp,
                                ),
                                title: Text(
                                  "My Location",
                                ),
                              ),
                            ),
                            Divider(),
                            SizedBox(
                              height: MediaQuery.of(context).size.height / 3,
                              child: ListView.builder(
                                itemCount: state.fromPrediction.length,
                                itemBuilder: (BuildContext context, int index) {
                                  return GestureDetector(
                                    onTap: () => context.read<TrackBloc>().add(
                                          TrackEvent.selectedFromLocation(
                                            state.fromPrediction[index]
                                                .description!,
                                          ),
                                        ),
                                    child: Column(
                                      children: [
                                        ListTile(
                                          leading: CircleAvatar(
                                            backgroundColor:
                                                Theme.of(context).primaryColor,
                                            child: const Icon(
                                                Icons.location_on_outlined),
                                          ),
                                          title: Text(state
                                              .fromPrediction[index]
                                              .description!),
                                        ),
                                        Divider(),
                                      ],
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        )
                      : state.active == 'to'
                          ? ListView.builder(
                              itemCount: state.toPrediction.length,
                              itemBuilder: (BuildContext context, int index) {
                                return GestureDetector(
                                  onTap: () => context.read<TrackBloc>().add(
                                        TrackEvent.selectedToLocation(
                                          state
                                              .toPrediction[index].description!,
                                        ),
                                      ),
                                  child: ListTile(
                                    leading: CircleAvatar(
                                      backgroundColor:
                                          Theme.of(context).primaryColor,
                                      child: const Icon(
                                          Icons.location_on_outlined),
                                    ),
                                    title: Text(
                                        state.toPrediction[index].description!),
                                  ),
                                );
                              },
                            )
                          : Container(),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
