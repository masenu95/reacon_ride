import 'package:dartz/dartz.dart';
import 'package:reacon_customer/domain/core/failures.dart';
import 'package:reacon_customer/domain/core/value_objects.dart';
import 'package:reacon_customer/domain/core/value_validators.dart';

class Email extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Email(String input) {
    return Email._(validateEmail(input));
  }

  const Email._(this.value);
}

class Password extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Password(String input) {
    return Password._(validatePassword(input));
  }
  const Password._(this.value);
}

class Username extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Username(String input) {
    return Username._(validateUsername(input));
  }
  const Username._(this.value);
}

class Name extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Name(String input) {
    return Name._(validateName(input));
  }
  const Name._(this.value);
}

class Phone extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Phone(String input) {
    return Phone._(validateName(input));
  }
  const Phone._(this.value);
}

class SignInObject extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory SignInObject(String input) {
    return SignInObject._(validateSignInObject(input));
  }
  const SignInObject._(this.value);
}
