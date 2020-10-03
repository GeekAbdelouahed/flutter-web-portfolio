import 'package:flutter/material.dart';

import '../config/styles.dart';
import '../config/colors.dart';

class RecentProjects extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.greyLight,
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * .15,
        vertical: 100,
      ),
      child: Column(
        children: [
          Text('RECENT PROJECTS', style: AppStyles.title),
          Container(width: 100, height: 2, color: AppColors.yellow),
          const SizedBox(height: 3),
          Container(width: 75, height: 2, color: AppColors.yellow),
          const SizedBox(height: 50),
          Wrap(
            spacing: 20,
            runSpacing: 20,
            children: [
              _buildProject(context, 'images/topfood.png', Colors.red[50]),
              _buildProject(context, 'images/omran.png', Colors.brown[50]),
              _buildProject(context, 'images/toptaxi.png', Colors.yellow[50]),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildProject(BuildContext context, String imagePath, Color color) {
    return Container(
      color: color,
      padding: const EdgeInsets.all(60),
      width: MediaQuery.of(context).size.width * .2,
      height: MediaQuery.of(context).size.width * .2,
      child: Image.asset(imagePath),
    );
  }
}
