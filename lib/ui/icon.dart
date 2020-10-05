import 'package:flutter/material.dart';

class AppIcon extends StatelessWidget {
  final String path;
  final double size;
  final Color color;
  final Color background;

  const AppIcon(this.path,
      {Key key, this.size = 25, this.color = Colors.white, this.background})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: background,
      child: Image.asset(path, color: color, height: size, width: size),
    );
  }
}
