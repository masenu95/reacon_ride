import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:reacon_customer/domain/core/failures.dart';

Either<ValueFailure<String>, String> validateEmail(String input) {
  const emailRegex =
      r"""^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$""";
  if (RegExp(emailRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidEmail(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validatePassword(String input) {
  if (input.length < 6) {
    return left(ValueFailure.shortPassword(failedValue: input));
  } else {
    return right(input);
  }
}

Either<ValueFailure<String>, String> validateName(String input) {
  if (input.length > 3) {
    return right(input);
  } else {
    return left(ValueFailure.invalidName(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateDob(String input) {
  if (input.isNotEmpty) {
    return right(input);
  } else {
    return left(ValueFailure.dobEmpty(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateUsername(String input) {
  if (input.length >= 3) {
    return right(input);
  } else {
    return left(ValueFailure.shortUsername(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateInteger(String input) {
  if (input.length < 5) {
    return right(input);
  } else {
    return left(ValueFailure.invalidInterger(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateNumber(String input) {
  if (input.length >= 4) {
    return right(input);
  } else {
    return left(ValueFailure.invalidNumber(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validatePhone(String input) {
  const phoneRegex = r"""^\(?([0-9]{3})\)?[-.●]?([0-9]{3})[-.●]?([0-9]{4})$""";
  if (RegExp(phoneRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidPhone(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateSignInObject(String input) {
  if (input.length >= 3) {
    return right(input);
  } else {
    return left(ValueFailure.invalidSignInObject(failedValue: input));
  }
}

Either<ValueFailure<File>, File> validateFile(File input) {
  if (input.readAsBytesSync().lengthInBytes < 10485760) {
    return right(input);
  } else {
    return left(ValueFailure.fileEmpty(failedValue: input));
  }
}

Either<ValueFailure<Map<dynamic, dynamic>>, Map<dynamic, dynamic>> validateMap(
    Map input) {
  if (input.isNotEmpty) {
    return right(input);
  } else {
    return left(ValueFailure.mapEmpty(failedValue: input));
  }
}
