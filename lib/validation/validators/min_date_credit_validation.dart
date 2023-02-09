import 'package:equatable/equatable.dart';

import '../protocols/protocols.dart';
import '../../../presentation/protocols/protocols.dart';

class MinDateCreditValidation extends Equatable implements FieldValidation {
  @override
  final String field;

  final int size;
  static const int maxAllowedYearsToExpirationCard = 10;

  @override
  List get props => [field, size];

  const MinDateCreditValidation({required this.field, required this.size});

  @override
  ValidationError? validate(Map input) {
    if (input[field] != null && input[field].length >= size) {
      if (_validateDate(input[field])) {
        return null;
      } else {
        return ValidationError.invalidField;
      }
    } else {
      return ValidationError.invalidField;
    }
  }

  bool _validateDate(String date) {
    if (date.isNotEmpty) {
      List<String> monthAndYear = date.split('/');
      int? month = int.tryParse(monthAndYear.first);
      int? year = int.tryParse(monthAndYear.last);
      DateTime? currentDate = DateTime.now();
      if (month != null && year != null) {
        year +=
            2000; // user types year like: 22 and we should infer that equals 2022, so 2000 + 22 == 2022
        return isValidsDateInput(
            month, year, currentDate.month, currentDate.year);
      }
    }
    return false;
  }

  bool isValidsDateInput(
      int refMonth, int refYear, int currentMonth, int currentYear) {
    if (refMonth >= 1 &&
        refMonth <= 12 &&
        refYear >= currentYear &&
        refYear <= (currentYear + maxAllowedYearsToExpirationCard)) {
      return !(refYear == currentYear && refMonth < currentMonth);
    }
    return false;
  }
}
