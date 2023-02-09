import 'package:equatable/equatable.dart';

import '../protocols/protocols.dart';
import '../../../presentation/protocols/protocols.dart';

class LowerCaseLettersValidation extends Equatable implements FieldValidation {
  @override
  final String field;

  @override
  List get props => [field];

  const LowerCaseLettersValidation(this.field);

  @override
  ValidationError? validate(Map input) {
    final regex = RegExp(r"[a-z]");
    final isValid =
        input[field]?.isNotEmpty != true || regex.hasMatch(input[field]);
    return isValid ? null : ValidationError.invalidField;
  }
}
