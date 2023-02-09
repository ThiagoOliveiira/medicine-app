import 'package:equatable/equatable.dart';

import '../protocols/protocols.dart';
import '../../../presentation/protocols/protocols.dart';

class SpecialCharactersValidation extends Equatable implements FieldValidation {
  @override
  final String field;

  @override
  List get props => [field];

  const SpecialCharactersValidation(this.field);

  @override
  ValidationError? validate(Map input) {
    final regex = RegExp(r"^(?=.*[@$!%*#?&])[A-Za-z\d@$!%*?&]");
    final isValid =
        input[field]?.isNotEmpty != true || regex.hasMatch(input[field]);
    return isValid ? null : ValidationError.invalidField;
  }
}
