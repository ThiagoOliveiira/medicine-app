import 'package:equatable/equatable.dart';

import '../validation.dart';
import '../../../presentation/protocols/protocols.dart';

class PhoneNumberValidation extends Equatable implements FieldValidation {
  static const phoneNumberLength = 11;

  @override
  final String field;

  @override
  List get props => [field];

  const PhoneNumberValidation(this.field);

  @override
  ValidationError? validate(Map input) {
    bool isValid;
    String phoneNumber = input[field] ?? '';
    if (phoneNumber.isNotEmpty == true) {
      phoneNumber = phoneNumber
          .replaceAll('(', '')
          .replaceAll(')', '')
          .replaceAll('-', '');
      isValid = phoneNumber.length <= phoneNumberLength ? false : true;
    } else {
      isValid = false;
    }
    return isValid ? null : ValidationError.invalidField;
  }
}
