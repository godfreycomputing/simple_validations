import 'package:simple_validations/validations.dart';
import 'package:test/test.dart';

void main() {
  group('A group of tests', () {
    final emptyEmail = '';
    final emptyPassword = '';
    final invalidConfirmPassword = '';
    final emptyDate = '';
    final invalidEmail = 'dkdjhfksdjfh';
    final invalidPassword = 'lsdiflsdfih';
    final invalidDate = 'skdjfhksjdf';
    final validEmail = 'test@test.com';
    final validPassword = 'Password1';
    final validConfirmPassword = 'Password1';
    final validDate = DateTime.now().toString();

    test('Empty Email Test', () {
      expect(
        emptyEmail.isEmail(),
        'Email Address is required.',
      );
    });
    test('Invalid Email Test', () {
      expect(
        invalidEmail.isEmail(),
        'Email Address must be in a valid format eg. user@domain.com',
      );
    });
    test('Valid Email Test', () {
      expect(
        validEmail.isEmail(),
        isNull,
      );
    });
    test('Empty Password Test', () {
      expect(emptyPassword.hasUpperCaseAndNumber(), 'Please enter a password.');
    });
    test('Invalid Password Test', () {
      expect(
        invalidPassword.hasUpperCaseAndNumber(),
        'Password requires at least One Uppercase letter and One Number.\nIt also requires at least 8 characters.',
      );
    });
    test('Valid Password Test', () {
      expect(
        validPassword.hasUpperCaseAndNumber(),
        isNull,
      );
    });
    test('Invalid Confirm Password Test', () {
      expect(
        validPassword.matches(invalidConfirmPassword),
        'Passwords do not match.',
      );
    });
    test('Valid Confirm Password Test', () {
      expect(
        validPassword.matches(validConfirmPassword),
        isNull,
      );
    });
    test('Empty Date Test', () {
      expect(
        emptyDate.isValidDateString(format: null),
        'Invalid date format.',
      );
    });

    test('Invalid Date Test', () {
      expect(
        invalidDate.isValidDateString(),
        'Invalid date format.',
      );
    });

    test('Valid Date Test', () {
      expect(
        validDate.isValidDateString(),
        '2-18-2022',
      );
    });
  });
}
