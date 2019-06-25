import 'package:flutter_web/material.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:portfolio/widgets/responsive_widget.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: _largeScreen(context),
      smallScreen: _smallScreen(context),
    );
  }

  Widget _largeScreen(BuildContext context) {
    return ResponsiveWidget.isLargeScreen(context)
        ? Container(
            height: 600,
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              shape: BoxShape.rectangle,
              image: DecorationImage(
                image: AssetImage('images/cover.jpg'),
                alignment: Alignment.topLeft,
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              width: double.infinity,
              height: double.infinity,
              color: AppColors.blackTransparent,
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width / 5,
                  vertical: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: <Color>[
                                  AppColors.redAccent,
                                  Colors.red[400]
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight),
                            shape: BoxShape.circle),
                        child: Text('AM',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            )),
                      ),
                      Row(
                        children: <Widget>[
                          InkWell(
                            onTap: () {},
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 30, vertical: 10),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.white,
                                  width: .5,
                                ),
                              ),
                              child: Text(
                                "HOME",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          InkWell(
                            onTap: () {},
                            child: Text(
                              "PROJECTS",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          InkWell(
                            onTap: () {},
                            child: Text(
                              "CONTACT",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  Text(
                    'Mobile and Web Developer.',
                    style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'I am an engineer in network administration and security ,Android developer has around 3.5 years experience in developing mobile applications.',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w200,
                      color: Colors.white,
                      letterSpacing: 1.1,
                      wordSpacing: 1.1,
                      height: 1.6,
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    children: <Widget>[
                      RaisedButton(
                        onPressed: () {},
                        padding:
                            EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                        color: AppColors.redAccent,
                        child: Text(
                          'I need to create project',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w300,
                            color: Colors.white,
                            letterSpacing: 1.1,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      RaisedButton(
                        onPressed: () {},
                        padding:
                            EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                        color: Colors.grey[700],
                        child: Text(
                          "I'm looking to hire",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w300,
                            color: Colors.white,
                            letterSpacing: 1.1,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        : null;
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
          alignment: Alignment.topLeft,
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        width: double.infinity,
        height: double.infinity,
        color: AppColors.blackTransparent,
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width / 10, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: <Color>[AppColors.redAccent, Colors.red[400]],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight),
                      shape: BoxShape.circle),
                  child: Text('AM',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      )),
                ),
                /*Column(
                  children: <Widget>[
                    InkWell(
                      onTap: () {},
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white,
                            width: .5,
                          ),
                        ),
                        child: Text(
                          "HOME",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Text(
                        "PROJECTS",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Text(
                        "CONTACT",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ],
                )*/
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              'Mobile and Web Developer.',
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'I am an engineer in network administration and security ,Android developer has around 3.5 years experience in developing mobile applications.',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w200,
                color: Colors.white,
                letterSpacing: 1.1,
                wordSpacing: 1.1,
                height: 1.6,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            RaisedButton(
              onPressed: () {},
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              color: AppColors.redAccent,
              child: Text(
                'I need to create project',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w300,
                  color: Colors.white,
                  letterSpacing: 1.1,
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            RaisedButton(
              onPressed: () {},
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              color: Colors.grey[700],
              child: Text(
                "I'm looking to hire",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w300,
                  color: Colors.white,
                  letterSpacing: 1.1,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
