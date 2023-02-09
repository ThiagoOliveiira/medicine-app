import 'package:equatable/equatable.dart';

import '../protocols/protocols.dart';
import '../../../presentation/protocols/protocols.dart';

class UpperCaseLettersValidation extends Equatable implements FieldValidation {
  @override
  final String field;

  @override
  List get props => [field];

  const UpperCaseLettersValidation(this.field);

  @override
  ValidationError? validate(Map input) {
    final regex = RegExp(r"^(?=.*[a-z])(?=.*[A-Z])[A-Za-z\d@$!%*#?&]");
    final isValid =
        input[field]?.isNotEmpty != true || regex.hasMatch(input[field]);
    return isValid ? null : ValidationError.invalidField;
  }
}
