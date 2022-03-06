import 'package:flutter/material.dart';

import 'config/themes.dart';
import 'ui/home/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WahidDev',
      debugShowCheckedModeBanner: false,
      theme: AppThemes.defaultTheme,
      home: HomePage(),
    );
  }
}
