part of 'setting_bloc.dart';

@freezed
abstract class SettingState with _$SettingState {
  const factory SettingState({
    required ThemeData theme,
  }) = _SettingState;

  factory SettingState.initial() {
    return SettingState(
      theme: appTheme,
    );
  }
}
