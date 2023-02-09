import 'package:flutter/material.dart';

import 'themes.dart';

ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    fontFamily: 'Poppins',
    useMaterial3: true,
    backgroundColor: AppColor.bodyColorDark,
    scaffoldBackgroundColor: AppColor.scaffoldBackgroundColorDark,
    hintColor: AppColor.textColor,
    primaryColorDark: AppColor.buttonBackgroundColorDark,
    primaryColor: AppColor.backgroundColorSplash,
    textTheme: TextTheme(
      displayLarge: const TextStyle(
          color: Colors.white, fontSize: 40, fontWeight: FontWeight.w900),
      displayMedium: const TextStyle(color: Colors.white, fontSize: 24),
      displaySmall:
          TextStyle(color: AppColor.textButtonColorDark, fontSize: 16),
      labelLarge: const TextStyle(
          color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),
      labelMedium: TextStyle(
          color: AppColor.textColorDark,
          fontSize: 16,
          fontWeight: FontWeight.w400),
    ),
    buttonTheme: ButtonThemeData(
      textTheme: ButtonTextTheme.primary,
      buttonColor: AppColor.buttonBackgroundColorDark,
    ));
