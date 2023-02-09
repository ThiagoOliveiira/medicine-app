import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../helpers/helpers.dart';

abstract class SignupPresenter implements Listenable {
  Rx<TextEditingController> get nameController;
  Rx<TextEditingController> get passwordController;
  Rx<TextEditingController> get emailController;

  Rxn<UIError?> get nameError;
  Rxn<UIError?> get passwordError;
  Rxn<UIError?> get emailError;

  RxBool get isFormValid;

  void validateName(String name);
  void validateEmail(String email);
  void validatePassword(String password);
}
