import 'package:flutter/material.dart';

import '../config/styles.dart';
import '../config/colors.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * .15,
          vertical: 100,
        ),
        child: Column(
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(1000),
                  child: Container(
                    color: AppColors.greyLight,
                    child: Image.asset(
                      'images/ouahid.png',
                      width: 300,
                      height: 300,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'ABOUT ME',
                        style: TextStyle(
                          color: AppColors.yellow,
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries",
                        style: Theme.of(context).textTheme.bodyText2.copyWith(
                              color: Colors.black.withOpacity(.7),
                              fontSize: 17,
                            ),
                      ),
                      const SizedBox(height: 30),
                      Row(
                        children: [
                          RaisedButton(
                            onPressed: () {},
                            color: AppColors.yellow,
                            textColor: Colors.white,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 30, vertical: 20),
                            child: Text('HIRE ME NOW'),
                          ),
                          const SizedBox(width: 20),
                          RaisedButton(
                            onPressed: () {},
                            color: AppColors.black,
                            textColor: Colors.white,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 30, vertical: 20),
                            child: Text('VIEW RESUME'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 100),
            Text('MY SKILLS', style: AppStyles.title),
            Container(width: 100, height: 2, color: AppColors.yellow),
            const SizedBox(height: 3),
            Container(width: 75, height: 2, color: AppColors.yellow),
            const SizedBox(height: 50),
            Wrap(
              spacing: 25,
              runSpacing: 25,
              runAlignment: WrapAlignment.spaceBetween,
              children: [
                _buildSkill('Java'),
                _buildSkill('Kotlin'),
                _buildSkill('Dart'),
                _buildSkill('Php'),
                _buildSkill('Java Script'),
                _buildSkill('Flutter'),
                _buildSkill('NodeJs'),
                _buildSkill('Laravel'),
                _buildSkill('Git'),
              ],
            ),
          ],
        ),
      );

  Widget _buildSkill(String title) => Chip(label: Text(title));
}
