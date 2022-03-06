import 'package:flutter/material.dart';

import '../utils/extensions.dart';

class ResponsiveWidget extends StatelessWidget {
  final Widget? desktopScreen;
  final Widget? tabletScreen;
  final Widget? mobileScreen;

  const ResponsiveWidget({
    Key? key,
    this.desktopScreen,
    this.tabletScreen,
    this.mobileScreen,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (context.isDesktop) {
      return desktopScreen ?? tabletScreen ?? mobileScreen!;
    }

    if (context.isTablet) {
      return tabletScreen ?? mobileScreen ?? desktopScreen!;
    }

    return mobileScreen ?? tabletScreen ?? desktopScreen!;
  }
}
