import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'failures.freezed.dart';

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.invalidEmail({
    required T failedValue,
  }) = InvalidEmail<T>;
  const factory ValueFailure.shortPassword({
    required T failedValue,
  }) = ShortPassword<T>;
  const factory ValueFailure.invalidName({
    required T failedValue
}) = InvalidName<T>;

  const factory ValueFailure.invalidInterger({
    required T failedValue
}) = InvalidInterger<T>;

  const factory ValueFailure.invalidNumber({
    required T failedValue
}) = InvalidNumber<T>;
  const factory ValueFailure.invalidPhone({
    required T failedValue
})= InvalidPhone<T>;
  const factory ValueFailure.shortUsername({
    required T failedValue
}) = ShortUsername<T>;
  const factory ValueFailure.invalidSignInObject({
    required T failedValue
  }) = InvalidSignInObject<T>;


    const factory ValueFailure.fileEmpty({
    required T failedValue
  }) = FileEmpty<T>;
    const factory ValueFailure.mapEmpty({
      required T failedValue
    }) = MapEmpty<T>;

  const factory ValueFailure.dobEmpty({
    required T failedValue
  }) = DobEmpty<T>;


}
