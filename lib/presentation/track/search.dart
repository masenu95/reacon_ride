import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reacon_customer/application/track/track_bloc.dart';
import 'package:reacon_customer/presentation/track/track.dart';

class SearchRoute extends StatelessWidget {
  const SearchRoute({Key? key}) : super(key: key);
  static const routeName = "search-route";

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TrackBloc, TrackState>(
      listener: (context, state) {
        if (state.fromPlace.coordinates.latitude != 0 &&
            state.toPlace.coordinates.latitude != 0) {
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
                FormField(
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
                FormField(
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

class FormField extends StatelessWidget {
  const FormField({
    Key? key,
    required this.label,
    required this.hint,
    required this.onChange,
    required this.validation,
    required this.color,
    required this.text,
  }) : super(key: key);
  final String label;
  final String hint;
  final void Function(String) onChange;
  final String? Function(String?)? validation;
  final Color color;
  final String text;

  @override
  Widget build(BuildContext context) {
    final TextEditingController _controller = TextEditingController();
    _controller.value = TextEditingValue(
      text: text,
      selection: TextSelection(
        baseOffset: text.length,
        extentOffset: text.length,
      ),
    );
    return TextFormField(
      controller: _controller,
      style: const TextStyle(
        fontSize: 14.0,
        color: Colors.black,
      ),
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            6,
          ),
        ),
        prefixIcon: const Icon(Icons.search),
        hintText: hint,
        hintStyle: const TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
      ),
      autocorrect: false,
      onChanged: onChange,
      validator: validation,
    );
  }
}
