import 'package:equatable/equatable.dart';

import '../protocols/protocols.dart';
import '../../../presentation/protocols/validation.dart';

class HasAtLeastTwoWordsValidation extends Equatable
    implements FieldValidation {
  @override
  final String field;

  @override
  List get props => [field];

  const HasAtLeastTwoWordsValidation(this.field);

  @override
  ValidationError? validate(Map input) {
    List<String> words = input[field].split(' ');
    var isValid = words.length >= 2 && words.every((word) => word.length >= 2);
    return isValid ? null : ValidationError.invalidField;
  }
}
