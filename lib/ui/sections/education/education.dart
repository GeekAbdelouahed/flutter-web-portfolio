import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio/models/education.dart';
import 'package:flutter_web_portfolio/ui/common/section_header.dart';

class EducationSection extends StatelessWidget {
  const EducationSection({
    Key? key,
    required this.educations,
  }) : super(key: key);

  final List<Education> educations;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SectionHeaderWidget(
          title: 'EDUCATION',
          subtitle: 'EDUCATION',
        ),
        const SizedBox(
          height: 30,
        ),
        ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: educations.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(educations[index].degree),
              subtitle: Text(educations[index].institute),
              trailing: Text(
                '${educations[index].startAt} - ${educations[index].endAt}',
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
