import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio/config/constants.dart';
import 'package:flutter_web_portfolio/ui/responsive_widget.dart';

import '../config/styles.dart';
import '../config/colors.dart';

class ContactUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      desktopScreen: Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * .15,
          vertical: 100,
        ),
        child: Column(
          children: [
            Text('GET IN TOUCH', style: AppStyles.title),
            Container(width: 100, height: 2, color: AppColors.yellow),
            const SizedBox(height: 3),
            Container(width: 75, height: 2, color: AppColors.yellow),
            const SizedBox(height: 50),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildContactInfo(
                        Icons.mail_outline,
                        'Mail Us:',
                        AppConstants.mail,
                      ),
                      const SizedBox(height: 20),
                      _buildContactInfo(
                        Icons.call,
                        'Call Us:',
                        AppConstants.phone,
                      ),
                      const SizedBox(height: 20),
                      _buildContactInfo(
                        Icons.location_on_outlined,
                        'Visit Us:',
                        AppConstants.location,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: _buildContactForm(context),
                ),
              ],
            )
          ],
        ),
      ),
      mobileScreen: Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * .15,
          vertical: 100,
        ),
        child: Column(
          children: [
            Text(
              'GET IN TOUCH',
              style: AppStyles.title,
              textAlign: TextAlign.center,
            ),
            Container(width: 75, height: 2, color: AppColors.yellow),
            const SizedBox(height: 3),
            Container(width: 50, height: 2, color: AppColors.yellow),
            const SizedBox(height: 50),
            Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildContactInfo(
                      Icons.mail_outline,
                      'Mail Us:',
                      AppConstants.mail,
                    ),
                    const SizedBox(height: 20),
                    _buildContactInfo(
                      Icons.call,
                      'Call Us:',
                      AppConstants.phone,
                    ),
                    const SizedBox(height: 20),
                    _buildContactInfo(
                      Icons.location_on_outlined,
                      'Visit Us:',
                      AppConstants.location,
                    ),
                  ],
                ),
                const SizedBox(height: 50),
                _buildContactForm(context),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _buildContactInfo(IconData iconData, String title, String content) {
    return FittedBox(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            iconData,
            size: 20,
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: AppColors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                content,
                style: TextStyle(color: AppColors.black.withOpacity(.7)),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildContactForm(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Have Something To Write?',
          style: TextStyle(
            color: AppColors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 25),
        Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Your Name',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  const SizedBox(width: 15),
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Your Email',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              TextFormField(
                minLines: 3,
                maxLines: 10,
                decoration: InputDecoration(
                  hintText: 'Your Message',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),
              RaisedButton(
                color: AppColors.yellow,
                textColor: Colors.white,
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                onPressed: () {},
                child: Text('Send'),
              ),
            ],
          ),
        )
      ],
    );
  }
}
