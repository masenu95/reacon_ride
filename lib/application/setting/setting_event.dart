part of 'setting_bloc.dart';

@freezed
abstract class SettingEvent with _$SettingEvent{
  const factory SettingEvent.lightTheme() = _LightTheme;
  const factory SettingEvent.darkTheme() = _DarkTheme;
}
