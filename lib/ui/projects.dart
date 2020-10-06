import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio/data/project.dart';
import 'package:flutter_web_portfolio/ui/responsive_widget.dart';

import '../config/styles.dart';
import '../config/colors.dart';

class RecentProjects extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      desktopScreen: Container(
        color: AppColors.greyLight,
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * .15,
          vertical: 100,
        ),
        child: Column(
          children: [
            Text('MY PROJECTS', style: AppStyles.title),
            Container(width: 100, height: 2, color: AppColors.yellow),
            const SizedBox(height: 3),
            Container(width: 75, height: 2, color: AppColors.yellow),
            const SizedBox(height: 50),
            Wrap(
              spacing: 20,
              runSpacing: 20,
              children: PROJECTS.map((p) => _buildProject(context, p)).toList(),
            ),
          ],
        ),
      ),
      mobileScreen: Container(
        color: AppColors.greyLight,
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * .15,
          vertical: 50,
        ),
        child: Column(
          children: [
            Text(
              'MY PROJECTS',
              style: AppStyles.title,
              textAlign: TextAlign.center,
            ),
            Container(width: 75, height: 2, color: AppColors.yellow),
            const SizedBox(height: 3),
            Container(width: 50, height: 2, color: AppColors.yellow),
            const SizedBox(height: 50),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: PROJECTS.map((p) => _buildProject(context, p)).toList(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProject(
    BuildContext context,
    Project project,
  ) {
    return ResponsiveWidget(
      desktopScreen: Container(
        color: AppColors.yellow.withOpacity(.1),
        padding: EdgeInsets.all(50),
        width: MediaQuery.of(context).size.width * .2,
        height: MediaQuery.of(context).size.width * .2,
        child: Image.network(project.image),
      ),
      mobileScreen: Container(
        color: AppColors.yellow.withOpacity(.1),
        padding: const EdgeInsets.all(15),
        width: MediaQuery.of(context).size.width * .25,
        height: MediaQuery.of(context).size.width * .25,
        child: Image.network(project.image),
      ),
    );
  }
}
