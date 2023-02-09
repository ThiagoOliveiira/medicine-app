import 'package:flutter/material.dart';
import 'package:get/get.dart';

import './splash.dart';
import '../../../../exports.dart';

Widget makeSplashPage() {
  final SplashPresenter presenter =
      Get.put<SplashPresenter>(makeGetxSplashPresenter());
  return SplashPage(presenter: presenter);
}
