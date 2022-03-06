import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio/ui/responsive_widget.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../config/constants.dart';
import '../../config/colors.dart';

class Header extends StatelessWidget {
  final String _name = "Abdelouahed";
  final String _job = "Mobile Developer";
  final String _description =
      "I am developer has around 4 years experience developing mobile and web applications, using different languages and techniques.";

  @override
  Widget build(BuildContext context) => ResponsiveWidget(
        desktopScreen: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * .15,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'I’m $_name',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.w900,
                ),
              ),
              Text(
                _job,
                style: TextStyle(
                  color: AppColors.yellow,
                  fontSize: 40,
                  fontWeight: FontWeight.w900,
                ),
              ),
              const SizedBox(height: 5),
              SizedBox(
                width: MediaQuery.of(context).size.width / 2,
                child: Text(
                  _description,
                  style: Theme.of(context).textTheme.bodyText2!.copyWith(
                        color: Colors.grey[100],
                        fontSize: 17,
                      ),
                ),
              ),
              const SizedBox(height: 30),
              RaisedButton(
                color: AppColors.yellow,
                textColor: Colors.white,
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                onPressed: _downloadCV,
                child: Text('Download CV'),
              ),
              const SizedBox(height: 100),
            ],
          ),
        ),
        mobileScreen: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * .15,
          ),
          child: FittedBox(
            child: Column(
              children: [
                Text(
                  'I’m $_name',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                Text(
                  _job,
                  style: TextStyle(
                    color: AppColors.yellow,
                    fontSize: 30,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                const SizedBox(height: 5),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    _description,
                    style: Theme.of(context).textTheme.bodyText2!.copyWith(
                          color: Colors.grey[100],
                          fontSize: 15,
                          height: 1.8,
                        ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 30),
                RaisedButton(
                  color: AppColors.yellow,
                  textColor: Colors.white,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  onPressed: _downloadCV,
                  child: Text('Download CV'),
                ),
                const SizedBox(height: 100),
              ],
            ),
          ),
        ),
      );

  void _downloadCV() {
    launch(AppConstants.cv);
  }
}
