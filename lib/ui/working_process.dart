import 'package:flutter/material.dart';

import '../config/styles.dart';
import '../config/colors.dart';

class WorkingProcess extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * .15,
        vertical: 100,
      ),
      child: Column(
        children: [
          Text('WORKING PROCESS', style: AppStyles.title),
          Container(width: 100, height: 2, color: AppColors.yellow),
          const SizedBox(height: 3),
          Container(width: 75, height: 2, color: AppColors.yellow),
          const SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: __buildProcess(
                    context,
                    '01.',
                    Icons.architecture_outlined,
                    'Planning',
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor laboris nisi ut aliquip ex ea commodo.'),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: __buildProcess(
                    context,
                    '02.',
                    Icons.design_services,
                    'Design',
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor laboris nisi ut aliquip ex ea commodo.'),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: __buildProcess(context, '03.', Icons.code, 'Code',
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor laboris nisi ut aliquip ex ea commodo.'),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget __buildProcess(BuildContext context, String index, IconData iconData,
      String title, String description) {
    return Card(
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Text(
                index,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Divider(color: AppColors.greyLight),
            Icon(iconData, size: 50),
            const SizedBox(height: 20),
            Text(
              title,
              style: TextStyle(
                color: Colors.black54,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              description,
              style: TextStyle(
                color: Colors.black45,
              ),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
