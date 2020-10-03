import 'package:flutter/material.dart';

import '../config/colors.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * .15,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'I’m Abdelouahed',
              style: TextStyle(
                color: Colors.white,
                fontSize: 40,
                fontWeight: FontWeight.w900,
              ),
            ),
            Text(
              'Mobile Developer',
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
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries",
                style: Theme.of(context).textTheme.bodyText2.copyWith(
                      color: Colors.grey[100],
                      fontSize: 17,
                    ),
              ),
            ),
            const SizedBox(height: 30),
            RaisedButton(
              color: AppColors.yellow,
              textColor: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              onPressed: () {},
              child: Text('Download CV'),
            ),
            const SizedBox(height: 100),
          ],
        ),
      );
}
