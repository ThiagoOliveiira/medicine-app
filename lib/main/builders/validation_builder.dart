import '../../validation/protocols/protocols.dart';
import '../../validation/validators/validators.dart';

class ValidationBuilder {
  static ValidationBuilder? _instance;
  String fieldName;
  List<FieldValidation> validations = [];

  ValidationBuilder._(this.fieldName);

  static ValidationBuilder field(String fieldName) {
    _instance = ValidationBuilder._(fieldName);
    return _instance!;
  }

  ValidationBuilder required() {
    validations.add(RequiredFieldValidation(fieldName));
    return this;
  }

  ValidationBuilder email() {
    validations.add(EmailValidation(fieldName));
    return this;
  }

  ValidationBuilder min(int size) {
    validations.add(MinLengthValidation(field: fieldName, size: size));
    return this;
  }

  ValidationBuilder minDate(int size) {
    validations.add(MinDateCreditValidation(field: fieldName, size: size));
    return this;
  }

  ValidationBuilder max(int size) {
    validations.add(MaxLengthValidation(field: fieldName, size: size));
    return this;
  }

  ValidationBuilder sameAs(String fieldToCompare) {
    validations.add(CompareFieldsValidation(
        field: fieldName, fieldToCompare: fieldToCompare));
    return this;
  }

  ValidationBuilder specialCharacters() {
    validations.add(SpecialCharactersValidation(fieldName));
    return this;
  }

  ValidationBuilder lettersAndNumbers() {
    validations.add(LettersAndNumbersValidation(fieldName));
    return this;
  }

  ValidationBuilder lowerCaseLetters() {
    validations.add(LowerCaseLettersValidation(fieldName));
    return this;
  }

  ValidationBuilder hasAtLeastTwoWords() {
    validations.add(HasAtLeastTwoWordsValidation(fieldName));
    return this;
  }

  ValidationBuilder upperCaseLetters() {
    validations.add(UpperCaseLettersValidation(fieldName));
    return this;
  }

  ValidationBuilder onlyNumbers() {
    validations.add(OnlyNumbersValidation(fieldName));
    return this;
  }

  List<FieldValidation> build() => validations;
}
