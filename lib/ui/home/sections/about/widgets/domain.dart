import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio/models/domain.dart';

class DomainWidget extends StatelessWidget {
  const DomainWidget({Key? key, required this.domain}) : super(key: key);

  final Domain domain;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.5,
      child: Container(
        alignment: AlignmentDirectional.centerStart,
        padding: const EdgeInsets.symmetric(horizontal: 30),
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          border: Border(
            bottom: BorderSide(
              color: Color(domain.color),
              width: 2,
            ),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              flex: 5,
              child: Align(
                alignment: AlignmentDirectional.centerStart,
                child: Image.asset(
                  'icons/${domain.icon}',
                  height: 27,
                  color: Color(domain.color),
                ),
              ),
            ),
            Flexible(
              flex: 4,
              child: Align(
                alignment: AlignmentDirectional.topStart,
                child: Text(
                  domain.name,
                  style: Theme.of(context)
                      .textTheme
                      .subtitle2
                      ?.copyWith(fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
