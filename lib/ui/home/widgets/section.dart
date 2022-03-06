import 'package:flutter/material.dart';

class SectionWidget extends StatefulWidget {
  const SectionWidget({
    Key? key,
    required this.name,
    required this.onTap,
  }) : super(key: key);

  final String name;
  final VoidCallback onTap;

  @override
  _SectionWidgetState createState() => _SectionWidgetState();
}

class _SectionWidgetState extends State<SectionWidget> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    final TextStyle style = Theme.of(context).textTheme.subtitle2!;
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (event) {
        setState(() {
          _isHovered = true;
        });
      },
      onExit: (event) {
        setState(() {
          _isHovered = false;
        });
      },
      child: GestureDetector(
        onTap: widget.onTap,
        child: Column(
          children: [
            AnimatedDefaultTextStyle(
              duration: const Duration(milliseconds: 300),
              style: style.copyWith(
                color: _isHovered
                    ? Theme.of(context).colorScheme.secondary
                    : style.color,
              ),
              child: Text(
                widget.name,
              ),
            ),
            AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              width: _isHovered ? 50 : 0,
              height: 1.5,
              color: Theme.of(context).colorScheme.secondary,
            ),
          ],
        ),
      ),
    );
  }
}
