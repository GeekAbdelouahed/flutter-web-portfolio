import 'package:flutter/material.dart';

class ResponsiveWidget extends StatelessWidget {
  final Widget desktopScreen;
  final Widget tabletScreen;
  final Widget mobileScreen;

  const ResponsiveWidget(
      {Key key, this.desktopScreen, this.tabletScreen, this.mobileScreen})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    if (screenWidth > 950) {
      return desktopScreen ?? tabletScreen ?? mobileScreen;
    }
    if (screenWidth > 600) {
      return tabletScreen ?? mobileScreen ?? desktopScreen;
    }

    return mobileScreen ?? tabletScreen ?? desktopScreen;
  }
}
