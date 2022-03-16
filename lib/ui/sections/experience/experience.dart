import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio/models/experience.dart';
import 'package:flutter_web_portfolio/ui/common/section_header.dart';

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({
    Key? key,
    required this.experiences,
  }) : super(key: key);

  final List<Experience> experiences;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SectionHeaderWidget(
          title: 'EXPERIENCE',
          subtitle: 'WORK EXPERIENCE',
        ),
        const SizedBox(
          height: 30,
        ),
        ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: experiences.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(experiences[index].name),
              subtitle: Text(experiences[index].company),
              trailing: Text(
                '${experiences[index].startAt} - ${experiences[index].endAt ?? 'present'}',
                style: Theme.of(context).textTheme.caption,
              ),
            );
          },
          separatorBuilder: (context, index) {
            return const Divider(
              height: 10,
            );
          },
        ),
      ],
    );
  }
}
