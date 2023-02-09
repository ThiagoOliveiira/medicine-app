import 'package:flutter/material.dart';

import '../../../exports.dart';

class TextFormFieldComponent extends StatelessWidget {
  final String hintText;
  final Icon prefixIcon;
  final bool obscureText;
  final String? errorLabel;
  final Function(String)? onChange;

  const TextFormFieldComponent(
      {super.key,
      required this.hintText,
      required this.prefixIcon,
      required this.onChange,
      required this.errorLabel,
      this.obscureText = false});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChange,
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: errorLabel,
        labelStyle: const TextStyle(color: Colors.red),
        filled: true,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        fillColor: isDarkMode
            ? AppColor.fillColorTextFieldDark
            : AppColor.fillColorTextField,
        prefixIcon: prefixIcon,
        prefixIconColor: Theme.of(context).primaryColor,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide.none),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Theme.of(context).primaryColor),
        ),
        // errorText: 'Campo obrogatório',
        errorStyle: const TextStyle(height: 0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide:
              BorderSide(color: Theme.of(context).primaryColor, width: 0.1),
        ),
      ),
    );
  }
}
