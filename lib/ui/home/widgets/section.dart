import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio/data/section.dart';

class SectionWidget extends StatefulWidget {
  const SectionWidget({
    Key? key,
    required this.index,
    required this.name,
    required this.onTap,
  }) : super(key: key);

  final int index;
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
      child: ValueListenableBuilder<int>(
        valueListenable: SectionModel.instance,
        child: Text(
          widget.name,
          textAlign: TextAlign.center,
        ),
        builder: (context, data, child) {
          bool isSelected = data == widget.index;
          final Color? textColor = _isHovered && !isSelected
              ? style.color
              : isSelected
                  ? Theme.of(context).colorScheme.secondary
                  : style.color?.withOpacity(.7);
          return GestureDetector(
            onTap: widget.onTap,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                AnimatedDefaultTextStyle(
                  duration: const Duration(milliseconds: 300),
                  style: style.copyWith(
                    color: textColor,
                  ),
                  child: child!,
                ),
                const SizedBox(
                  height: 5,
                ),
                Align(
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 200),
                    width: _isHovered || isSelected ? 50 : 0,
                    height: 1.5,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
