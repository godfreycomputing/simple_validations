import 'package:intl/intl.dart';

extension ValidDate on String? {
  ///[isValidDateString] returns an error if the date is not in the correct format.
  ///
  ///Returns a formatted dateString according to the designated [format] if is a valid date string.
  ///[format] defaults to "M-d-yyyy", eg. "1-12-2022";
  String? isValidDateString({String? format = "M-d-yyyy"}) {
    final result = DateTime.tryParse(this!);
    if (result == null) {
      return 'Invalid date format.';
    }
    final _formattedDate = DateFormat(format).format(result.toLocal());
    return _formattedDate;
  }
}
