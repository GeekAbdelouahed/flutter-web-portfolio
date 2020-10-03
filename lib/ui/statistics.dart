import 'package:flutter/material.dart';

class Statistics extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      color: Colors.black54,
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * .15,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildStatistic(
              context, Icons.work_outline_outlined, 4, 'Years of Experience'),
          _buildStatistic(context, Icons.computer, 10, 'Projects Done'),
          _buildStatistic(
              context, Icons.tag_faces_rounded, 50, 'Happy Clients'),
        ],
      ),
    );
  }

  Widget _buildStatistic(
      BuildContext context, IconData iconData, int total, String description) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          iconData,
          size: 75,
          color: Colors.white,
        ),
        Text(
          '$total+',
          style: TextStyle(
            color: Colors.white,
            fontSize: 50,
            fontWeight: FontWeight.w900,
          ),
        ),
        Text(
          description,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
