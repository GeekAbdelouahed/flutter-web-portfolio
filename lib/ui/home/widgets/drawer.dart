import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio/ui/home/widgets/section.dart';

class DrawerWidget extends StatelessWidget {
  final double elevation;

  const DrawerWidget({
    Key? key,
    this.elevation = 16.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: elevation,
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Container(
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: Image.asset(
                'images/ouahid.png',
                height: 125,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              'Abdelouahed Medjoudja ( Wahid )',
              style: Theme.of(context).textTheme.headline2,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Senior Mobile Developer',
              style: Theme.of(context)
                  .textTheme
                  .subtitle1!
                  .copyWith(color: Theme.of(context).colorScheme.secondary),
            ),
            const SizedBox(
              height: 50,
            ),
            SectionWidget(
              name: 'HOME',
              onTap: () {},
            ),
            const SizedBox(
              height: 15,
            ),
            SectionWidget(
              name: 'ABOUT',
              onTap: () {},
            ),
            const SizedBox(
              height: 15,
            ),
            SectionWidget(
              name: 'SERVICES',
              onTap: () {},
            ),
            const SizedBox(
              height: 15,
            ),
            SectionWidget(
              name: 'SKILLS',
              onTap: () {},
            ),
            const SizedBox(
              height: 15,
            ),
            SectionWidget(
              name: 'EDUCATION',
              onTap: () {},
            ),
            const SizedBox(
              height: 15,
            ),
            SectionWidget(
              name: 'EXPERIENCE',
              onTap: () {},
            ),
            const SizedBox(
              height: 15,
            ),
            SectionWidget(
              name: 'WORK',
              onTap: () {},
            ),
            const SizedBox(
              height: 15,
            ),
            SectionWidget(
              name: 'CONTACT',
              onTap: () {},
            ),
            const SizedBox(
              height: 50,
            ),
            Opacity(
              opacity: .7,
              child: Text(
                '© Copyright ${DateTime.now().year} All rights reserved.',
                style: Theme.of(context).textTheme.bodyText2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
