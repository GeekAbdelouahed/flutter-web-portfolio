import 'package:flutter_web/material.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:portfolio/widgets/contact.dart';
import 'package:portfolio/widgets/responsive_widget.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: _largeScreen(context),
      smallScreen: _smallScreen(context),
    );
  }

  Widget _largeScreen(BuildContext context) {
    return Container(
        height: 500,
        width: double.infinity,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            shape: BoxShape.rectangle,
            image: DecorationImage(
                image: AssetImage('images/cover.jpg'),
                alignment: Alignment.bottomLeft,
                fit: BoxFit.cover)),
        child: Container(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width / 5, vertical: 30),
          color: AppColors.blackTransparent,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage('images/me.jpg'),
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: <Widget>[
                      Image.asset(
                        'images/linkedin.png',
                        height: 25,
                        width: 25,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Image.asset(
                        'images/facebook.png',
                        height: 25,
                        width: 25,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Image.asset(
                        'images/twitter.png',
                        height: 25,
                        width: 25,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Image.asset(
                        'images/github.png',
                        height: 25,
                        width: 25,
                      ),
                    ],
                  )
                ],
              ),
              Expanded(
                  child: Align(
                      alignment: Alignment.centerRight,
                      child: Container(width: 600, child: Contact())))
            ],
          ),
        ));
  }

  Widget _smallScreen(BuildContext context) {
    return Container(
        height: 600,
        width: double.infinity,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            shape: BoxShape.rectangle,
            image: DecorationImage(
                image: AssetImage('images/cover.jpg'),
                alignment: Alignment.bottomLeft,
                fit: BoxFit.cover)),
        child: Container(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width / 10, vertical: 30),
          color: AppColors.blackTransparent,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage('images/me.jpg'),
                          fit: BoxFit.cover)),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    'images/linkedin.png',
                    height: 25,
                    width: 25,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Image.asset(
                    'images/facebook.png',
                    height: 25,
                    width: 25,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Image.asset(
                    'images/twitter.png',
                    height: 25,
                    width: 25,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Image.asset(
                    'images/github.png',
                    height: 25,
                    width: 25,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                  child: Align(
                      alignment: Alignment.centerRight,
                      child: Container(width: 600, child: Contact())))
            ],
          ),
        ));
  }
}
