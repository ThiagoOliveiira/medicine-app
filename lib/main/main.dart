import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../exports.dart';
import '../main/factories/factories.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: isDarkMode ? AppTheme.dark : AppTheme.light,
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: makeSplashPage, transition: Transition.fade),
        GetPage(
            name: '/signup', page: makeSignupPage, transition: Transition.fade),
      ],
    );
  }
}
