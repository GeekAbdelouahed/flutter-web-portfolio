import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio/ui/responsive_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Statistics extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      desktopScreen: Container(
        height: 400,
        color: Colors.black.withOpacity(.7),
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * .15,
        ),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          _buildStatistic(
              context, FontAwesomeIcons.briefcase, '4+', 'Years of Experience'),
          _buildStatistic(
              context, FontAwesomeIcons.tasks, '10+', 'Projects Done'),
          _buildStatistic(
              context, FontAwesomeIcons.smileBeam, '50+', 'Happy Clients'),
          _buildStatistic(context, FontAwesomeIcons.mugHot, '∞', 'Coffee Cups'),
        ]),
      ),
      mobileScreen: Container(
        color: Colors.black54,
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * .15,
          vertical: 50,
        ),
        child: Column(
          children: [
            _buildStatistic(context, FontAwesomeIcons.briefcase, '4+',
                'Years of Experience'),
            const SizedBox(height: 50),
            _buildStatistic(
                context, FontAwesomeIcons.tasks, '10+', 'Projects Done'),
            const SizedBox(height: 50),
            _buildStatistic(
                context, FontAwesomeIcons.smileBeam, '50+', 'Happy Clients'),
            const SizedBox(height: 50),
            _buildStatistic(
                context, FontAwesomeIcons.mugHot, '∞', 'Coffee Cups'),
          ],
        ),
      ),
    );
  }

  Widget _buildStatistic(BuildContext context, IconData iconData, String total,
      String description) {
    return ResponsiveWidget(
      desktopScreen: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            iconData,
            size: 50,
            color: Colors.white,
          ),
          const SizedBox(height: 5),
          Text(
            total,
            style: TextStyle(
              color: Colors.white,
              fontSize: 50,
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            description,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
      mobileScreen: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            iconData,
            size: 50,
            color: Colors.white,
          ),
          const SizedBox(height: 5),
          Text(
            total,
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            description,
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
