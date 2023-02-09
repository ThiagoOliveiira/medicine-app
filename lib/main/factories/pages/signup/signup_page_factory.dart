import 'package:flutter/material.dart';
import 'package:get/get.dart';

import './signup.dart';
import '../../../../exports.dart';

Widget makeSignupPage() {
  final SignupPresenter presenter =
      Get.put<SignupPresenter>(makeGetxSigUpPresenter());
  return SignupPage(presenter: presenter);
}
