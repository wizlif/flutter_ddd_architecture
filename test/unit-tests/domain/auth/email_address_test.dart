import 'package:ddd/domain/auth/value_objects.dart';
import 'package:test/test.dart';

void main() {
  group('Email Address Auth domain', (){
    test('Invalid email address returns ValueFailure.invalidEmail failure', () {
      var _emailAddress = EmailAddress("fasfsfs");

      expect(_emailAddress.value.isLeft(), true);
    });

    test('Valid email address returns success value', () {
      var _emailAddress = EmailAddress("me@example.com");

      expect(_emailAddress.value.isRight(), true);
    });
  });
}