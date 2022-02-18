extension PasswordValidation on String? {
  ///[hasUpperCaseAndNumber] does exactly what it says
  ///will return null if valid and an error message if not.
  ///'Password requires at least One Uppercase letter and One Number. It also requires at least 8 characters.'

  String? hasUpperCaseAndNumber() {
    if (this == null || this!.isEmpty) {
      return 'Please enter a password.';
    }
    if (!RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,}$')
        .hasMatch(this!)) {
      return 'Password requires at least One Uppercase letter and One Number.\nIt also requires at least 8 characters.';
    }
    return null;
  }

  ///[matches] checks if the two passwords match.
  ///Provides a basic error message.
  ///'Passwords do not match.'
  ///
  String? matches(String? confirmPassword) {
    if (!(this == confirmPassword)) {
      return 'Passwords do not match.';
    }
    return null;
  }
}
