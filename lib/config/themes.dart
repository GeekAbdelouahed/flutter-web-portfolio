import 'package:flutter/material.dart';

import 'colors.dart';

abstract class AppThemes {
  static ThemeData defaultTheme = ThemeData(
    colorScheme: ColorScheme.fromSwatch(
      accentColor: AppColors.blue,
    ),
    appBarTheme: AppBarTheme(
      elevation: 0,
      color: Colors.transparent,
      iconTheme: IconThemeData(
        color: AppColors.black,
      ),
    ),
    textTheme: TextTheme(
      headline1: TextStyle(
        color: AppColors.black,
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
      headline2: TextStyle(
        color: AppColors.black,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
      subtitle2: TextStyle(
        color: AppColors.black,
      ),
    ),
    drawerTheme: DrawerThemeData(
      backgroundColor: AppColors.grey,
    ),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}
