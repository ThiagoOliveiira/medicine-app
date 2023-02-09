import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medicine_app/exports.dart';
import 'package:medicine_app/ui/helpers/errors/ui_error.dart';

class GetxSignUpPresenter extends GetxController
    with FormManager
    implements SignupPresenter {
  final Validation validation;

  String? _name;
  String? _email;
  String? _password;

  @override
  Rx<TextEditingController> nameController = TextEditingController().obs;

  @override
  Rx<TextEditingController> emailController = TextEditingController().obs;

  @override
  Rx<TextEditingController> passwordController = TextEditingController().obs;

  @override
  Rxn<UIError?> nameError = Rxn<UIError?>();

  @override
  Rxn<UIError?> passwordError = Rxn<UIError?>();

  @override
  Rxn<UIError?> emailError = Rxn<UIError?>();

  GetxSignUpPresenter({required this.validation});

  @override
  void validateName(String name) {
    _name = name;
    nameError.value = _validateField('name');
    _validateForm();
  }

  @override
  void validateEmail(String email) {
    _email = email;
    emailError.value = _validateField('email');
    _validateForm();
  }

  @override
  void validatePassword(String password) {
    _password = password;
    passwordError.value = _validateField('password');
    _validateForm();
  }

  UIError? _validateField(String field) {
    final formData = {'name': _name, 'email': _email, 'password': _password};
    final error = validation.validate(field: field, input: formData);
    switch (error) {
      case ValidationError.invalidField:
        return UIError.invalidField;
      case ValidationError.requiredField:
        return UIError.requiredField;

      default:
        return null;
    }
  }

  void _validateForm() => setFormValid = nameError.value == null &&
      passwordError.value == null &&
      emailError.value == null &&
      _name != null &&
      _password != null &&
      _email != null;
}
