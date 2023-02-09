import 'package:equatable/equatable.dart';

import '../validation.dart';
import '../../../presentation/protocols/protocols.dart';

class OnlyNumbersValidation extends Equatable implements FieldValidation {
  @override
  final String field;

  @override
  List get props => [field];

  const OnlyNumbersValidation(this.field);

  @override
  ValidationError? validate(Map input) {
    final regex = RegExp(r"^[0-9]");
    final isValid =
        input[field]?.isNotEmpty != true || regex.hasMatch(input[field]);
    return isValid ? null : ValidationError.invalidField;
  }
}
