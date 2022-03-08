import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio/data/about.dart';

import 'widgets/domain.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({Key? key, required this.about}) : super(key: key);

  final About about;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'ABOUT US',
          style: Theme.of(context).textTheme.caption,
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          'Who AM I?',
          style: Theme.of(context).textTheme.headline1,
        ),
        const SizedBox(
          height: 30,
        ),
        RichText(
          text: TextSpan(
            style: Theme.of(context).textTheme.bodyText1,
            children: [
              TextSpan(
                text:
                    'Hi I\'m ${about.firstName} ${about.lastName} (${about.nickName}) ',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text: about.description,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 100,
        ),
        Row(
          children: about.domains.map((e) {
            return Expanded(
              child: Padding(
                padding: const EdgeInsetsDirectional.only(end: 30),
                child: DomainWidget(
                  domain: e,
                ),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
