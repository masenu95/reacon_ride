import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:reacon_customer/presentation/core/theme/theme.dart';


class ThemeCubit extends Cubit<ThemeData> {
  ThemeCubit() : super(appTheme);

  void selectLightTheme() {
    emit(appTheme);
  }

  void selectDarkTheme() {
    emit(darkTheme);
  }
}

