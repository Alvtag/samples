class Utils {
  static const String patternPostalCode =
      '^[A-Za-z]\\d[A-Za-z][ ]?\\d[A-Za-z]\\d\$';

  /// Checks if the postal code is in a valid format
  /// Valid formats example: A6B 7H3, A6B7H3
  static bool isPostalCodeValid(String value) {
    return isEmptyFieldValid(value) &&
        _matchesPattern(value, patternPostalCode);
  }

  static bool isEmptyFieldValid(String value, {bool isRequired = true}) {
    return !(isRequired && value.isEmpty);
  }

  static bool _matchesPattern(String inputStr, String patternStr) {
    final pattern = patternStr;
    final regex = RegExp(pattern);
    if (!regex.hasMatch(inputStr)) {
      return false;
    }
    return true;
  }
}
