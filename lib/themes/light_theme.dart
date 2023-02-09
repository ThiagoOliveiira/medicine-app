import 'package:flutter/material.dart';

import 'themes.dart';

ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    useMaterial3: true,
    fontFamily: 'Poppins',
    backgroundColor: AppColor.bodyColor,
    scaffoldBackgroundColor: AppColor.scaffoldBackgroundColor,
    hintColor: AppColor.textColor,
    primaryColorLight: AppColor.buttonBackgroundColor,
    textTheme: TextTheme(
      displayLarge: const TextStyle(
          color: Colors.black, fontSize: 40, fontWeight: FontWeight.w900),
      displayMedium: const TextStyle(color: Colors.black, fontSize: 24),
      displaySmall: TextStyle(color: AppColor.textButtonColor, fontSize: 16),
      labelLarge: const TextStyle(
          color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),
      labelMedium: TextStyle(
          color: AppColor.textColor, fontSize: 16, fontWeight: FontWeight.w400),
    ),
    buttonTheme: ButtonThemeData(
      textTheme: ButtonTextTheme.primary,
      buttonColor: AppColor.buttonBackgroundColor,
    ));
