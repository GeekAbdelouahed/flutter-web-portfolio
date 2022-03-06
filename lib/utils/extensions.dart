// String
import 'package:flutter/material.dart';

extension StringExtensions on String {
  bool get isValidEmail => RegExp(
          "^[a-zA-Z0-9.a-zA-Z0-9.!#\$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
      .hasMatch(this.trim());

  bool isValidName({minLength = 3}) =>
      this.trim().isNotEmpty && (this.trim().length >= minLength);
}

extension ContextExtensions on BuildContext {
  bool get isDesktop => MediaQuery.of(this).size.width > 950;

  bool get isTablet =>
      MediaQuery.of(this).size.width <= 950 &&
      MediaQuery.of(this).size.width > 600;

  bool get isMobile => !isDesktop && !isTablet;
}
