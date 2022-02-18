///Some basic String validation extensions not provider by dart
extension StringValidations on String? {
  /// [isNullOrEmpty] checks is the String is null or empty.
  /// Provides a basic error message that can be used.
  /// '[valueName] is required'
  /// A return value of null indicates a valid value.
  ///
  /// thows an [ArgumentError] if valueName is null
  String? isNullOrEmpty({String? valueName}) {
    if (valueName == null) {
      throw ArgumentError('value name is required', valueName);
    }
    return this == null || this!.isEmpty ? '$valueName is required' : null;
  }

  /// [isTooShort] compares the length of a string to the [minLength] to ensure it is greater.
  /// Provides a basic error message that can be used.
  /// '[valueName] requires at least [minLength] characters.'
  /// A return value of null indicates a valid length.
  ///
  /// thows an [ArgumentError] if valueName is null or the String value is null
  String? isTooShort({
    int minLength = 0,
    String? valueName,
  }) {
    if (this == null) {
      throw ArgumentError('value is required', this);
    }
    return this!.length < minLength
        ? '$valueName requires at least $minLength characters.'
        : null;
  }

  /// [isTooShort] compares the length of a string to the [maxLength] to ensure it is less than the [maxLength].
  /// Provides a basic error message that can be used.
  /// '[valueName] must be less than ([maxLength] + 1) characters.'
  /// A return value of null indicates a valid length.
  ///
  /// thows an [ArgumentError] if valueName is null or the String value is null.
  String? isTooLong({
    int? maxLength = 25,
    String? valueName,
  }) {
    if (this == null) {
      throw ArgumentError('value is required', this);
    }
    if (valueName == null) {
      throw ArgumentError('value name is required', valueName);
    }
    return this!.length > maxLength!
        ? '$valueName must be less than ${maxLength + 1} characters.'
        : null;
  }

  /// [lengthIsInRange] compares the length of a string to the [minLength] and [maxLength]
  /// to ensure it is between the given values.
  /// Provides a basic error message that can be used.
  /// '[valueName] must be between [minLength] and [maxLength] characters long.'
  /// A return value of null indicates a valid length.
  ///
  /// thows an [ArgumentError] if valueName is null or the String value is null.
  String? lengthIsInRange({
    int? minLength = 0,
    int? maxLength = 25,
    String? valueName,
  }) {
    if (this == null) {
      throw ArgumentError('value is required', this);
    }
    return this!.length < minLength! || this!.length > maxLength!
        ? '$valueName must be between $minLength and $maxLength characters long'
        : null;
  }
}
