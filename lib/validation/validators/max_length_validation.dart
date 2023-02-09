import 'package:equatable/equatable.dart';

import '../protocols/protocols.dart';
import '../../../presentation/protocols/protocols.dart';

class MaxLengthValidation extends Equatable implements FieldValidation {
  @override
  final String field;

  final int size;

  @override
  List get props => [field, size];

  const MaxLengthValidation({required this.field, required this.size});

  @override
  ValidationError? validate(Map input) =>
      input[field] != null && input[field].length <= size
          ? null
          : ValidationError.invalidField;
}
