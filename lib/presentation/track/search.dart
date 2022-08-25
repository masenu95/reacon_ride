import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reacon_customer/application/track/track_bloc.dart';
import 'package:reacon_customer/presentation/core/widget.dart';
import 'package:reacon_customer/presentation/track/test.dart';
import 'package:reacon_customer/presentation/track/track.dart';

class SearchRoute extends StatelessWidget {
  const SearchRoute({Key? key}) : super(key: key);
  static const routeName = "search-route";

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TrackBloc, TrackState>(
      listener: (context, state) {
        if (state.searchFrom == true && state.searchTo == true) {
          context.read<TrackBloc>().add(const TrackEvent.getDirection());
          Navigator.pushNamed(context, TrackMapDetail.routeName);
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
                ),
                Expanded(
                  child: state.active == "from"
                      ? ListView.builder(
                          itemCount: state.fromPrediction.length,
                          itemBuilder: (BuildContext context, int index) {
                            return GestureDetector(
                              onTap: () => context.read<TrackBloc>().add(
                                    TrackEvent.selectedFromLocation(
                                      state.fromPrediction[index].description!,
                                    ),
                                  ),
                              child: ListTile(
                                leading: CircleAvatar(
                                  backgroundColor:
                                      Theme.of(context).primaryColor,
                                  child: const Icon(Icons.location_on_outlined),
                                ),
                                title: Text(
                                    state.fromPrediction[index].description!),
                              ),
                            );
                          },
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
