import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reacon_customer/presentation/core/theme/theme.dart';

part 'setting_bloc.freezed.dart';

part 'setting_event.dart';

part 'setting_state.dart';

class SettingBloc extends Bloc<SettingEvent, SettingState> {
  SettingBloc() : super(SettingState.initial());

  @override
  Stream<SettingState> mapEventToState(
    SettingEvent event,
  ) async* {
    yield* event.map(
      lightTheme: (e) async* {
        yield state.copyWith(
          theme: appTheme,
        );
      },
      darkTheme: (e) async* {
        yield state.copyWith(
          theme: darkTheme,
        );
      },
    );
  }
}
