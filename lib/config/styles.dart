import 'package:flutter/material.dart';

import 'colors.dart';

abstract class AppStyles {
  static final TextStyle title = TextStyle(
    color: AppColors.black.withOpacity(.8),
    fontSize: 35,
    fontWeight: FontWeight.w700,
  );

  static final TextStyle headline1 = TextStyle(
    color: AppColors.black,
    fontSize: 30,
    fontWeight: FontWeight.bold,
  );

  static final TextStyle headline2 = TextStyle(
    color: AppColors.black,
    fontSize: 18,
    fontWeight: FontWeight.bold,
  );

  static final TextStyle subtitle2 = TextStyle(
    color: AppColors.black,
  );

  static final TextStyle bodyText1 = TextStyle(
    color: AppColors.black.withOpacity(.8),
    fontSize: 15,
    height: 1.75,
  );
}
