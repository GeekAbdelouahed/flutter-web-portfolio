import 'package:flutter/material.dart';

import 'colors.dart';
import 'styles.dart';

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
      headline1: AppStyles.headline1,
      headline2: AppStyles.headline2,
      subtitle2: AppStyles.subtitle2,
      bodyText1: AppStyles.bodyText1,
    ),
    drawerTheme: DrawerThemeData(
      backgroundColor: AppColors.grey,
    ),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}
