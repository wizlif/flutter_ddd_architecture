import 'package:dartz/dartz.dart';
import 'package:ddd/domain/core/value_objects.dart';

import 'value_failures.dart';
import 'value_validators.dart';

class EmailAddress extends ValueObject<String> {
  final Either<ValueFailure<String>,String> value;

  factory EmailAddress(String input) {
    return EmailAddress._(
      validateEmailAddress(input),
    );
  }

  const EmailAddress._(this.value);

}

class Password extends ValueObject<String> {
  final Either<ValueFailure<String>,String> value;

  factory Password(String input) {
    return Password._(
      validatePassword(input),
    );
  }

  const Password._(this.value);

}


