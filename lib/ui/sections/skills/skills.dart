import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio/models/skill.dart';
import 'package:flutter_web_portfolio/ui/common/section_header.dart';

import 'widgets/skill.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({
    Key? key,
    required this.skills,
  }) : super(key: key);

  final List<Skill> skills;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SectionHeaderWidget(
          title: 'MY SPECIALTY',
          subtitle: 'MY SKILLS',
        ),
        const SizedBox(
          height: 30,
        ),
        Wrap(
          spacing: 20,
          runSpacing: 20,
          children: skills.map((skill) {
            return FractionallySizedBox(
              widthFactor: .3,
              child: SkillWidget(
                skill: skill,
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
