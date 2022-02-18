extension EmailValidations on String? {
  ///[isEmail] checks against a RegEx to see if the format has, an expample, user@gmail.com.
  ///Also, checks if the value is empty or null.
  ///Provides basic error message.
  ///
  String? isEmail() {
    if (this == null || this!.isEmpty) {
      return 'Email Address is required.';
    }
    if (!RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(this!)) {
      return 'Email Address must be in a valid format eg. user@domain.com';
    }

    return null;
  }
}
