import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

import 'config/themes.dart';
import 'ui/home/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wahid',
      debugShowCheckedModeBanner: false,
      theme: AppThemes.defaultTheme,
      home: HomePage(),
      builder: (context, child) {
        return ResponsiveWrapper.builder(
          child,
          maxWidth: 2460,
          minWidth: 450,
          defaultScale: true,
          breakpoints: [
            const ResponsiveBreakpoint.resize(450, name: MOBILE),
            const ResponsiveBreakpoint.autoScale(800, name: TABLET),
            const ResponsiveBreakpoint.autoScale(1000, name: TABLET),
            const ResponsiveBreakpoint.resize(1200, name: DESKTOP),
            const ResponsiveBreakpoint.autoScale(2460, name: '4K'),
          ],
        );
      },
    );
  }
}
