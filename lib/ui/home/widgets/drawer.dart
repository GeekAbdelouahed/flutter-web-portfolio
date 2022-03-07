import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio/ui/home/widgets/section.dart';

typedef OnSelectSection = void Function(int);

class DrawerWidget extends StatelessWidget {
  final double elevation;
  final OnSelectSection? onSelectSection;

  const DrawerWidget({
    Key? key,
    this.elevation = 16.0,
    this.onSelectSection,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const _sections = [
      'ABOUT',
      'SERVICES',
      'SKILLS',
      'EDUCATION',
      'EXPERIENCE',
      'WORK',
      'CONTACT',
    ];
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
              height: 40,
            ),
            ListView.separated(
              itemCount: _sections.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return SectionWidget(
                  index: index,
                  name: _sections[index],
                  onTap: () {
                    onSelectSection?.call(index);
                  },
                );
              },
              separatorBuilder: (context, index) {
                return const SizedBox(
                  height: 15,
                );
              },
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
