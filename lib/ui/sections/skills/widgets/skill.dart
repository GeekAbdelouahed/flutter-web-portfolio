import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio/models/skill.dart';

class SkillWidget extends StatelessWidget {
  const SkillWidget({
    Key? key,
    required this.skill,
  }) : super(key: key);

  final Skill skill;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          skill.name,
          style: Theme.of(context).textTheme.headline1,
        ),
        const SizedBox(
          height: 5,
        ),
        Container(
          height: 7,
          width: double.infinity,
          alignment: AlignmentDirectional.centerStart,
          decoration: BoxDecoration(
            color: Color(skill.color).withOpacity(.2),
            borderRadius: BorderRadius.circular(10),
          ),
          child: FractionallySizedBox(
            widthFactor: skill.percentage / 100,
            child: Container(
              decoration: BoxDecoration(
                color: Color(skill.color),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
