import 'package:flutter_web/material.dart';
import 'package:portfolio/data/projects.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:portfolio/utils/flutter_swiper.dart';
import 'package:portfolio/widgets/responsive_widget.dart';

class ProjectItem extends StatefulWidget {
  final Project project;

  const ProjectItem({Key key, this.project}) : super(key: key);

  @override
  _ProjectItemState createState() => _ProjectItemState(project);
}

class _ProjectItemState extends State<ProjectItem> {
  final Project project;

  _ProjectItemState(this.project);

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: _largeScreen(context),
      smallScreen: _smallScreen(context),
    );
  }

  Widget _largeScreen(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width / 5, vertical: 100),
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                    width: 300,
                    height: 500,
                    child: Swiper(
                      itemCount: project.images.length,
                      itemWidth: 250,
                      viewportFraction: .85,
                      scale: .9,
                      itemBuilder: (context, index) =>
                          Image.asset(project.images[index]),
                    )),
                SizedBox(
                  width: 50,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        project.title,
                        style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        project.description,
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.grey[600],
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Wrap(
                          spacing: 10,
                          children: project.tags
                              .map(
                                (tag) => Chip(
                                      backgroundColor: AppColors.redAccent,
                                      label: Text(
                                        tag,
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                              )
                              .toList())
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Card(
              elevation: 10,
              child: Container(
                height: 1,
                color: Colors.grey,
              ),
            )
          ],
        ));
  }

  Widget _smallScreen(BuildContext context) {
    return Center(
      child: Container(
          margin: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width / 10, vertical: 50),
          alignment: Alignment.center,
          child: Column(
            children: <Widget>[
              Container(
                  height: 500,
                  child: Swiper(
                    itemCount: project.images.length,
                    autoplay: true,
                    itemWidth: 250,
                    viewportFraction: .85,
                    scale: .9,
                    itemBuilder: (context, index) =>
                        Image.asset(project.images[index]),
                  )),
              Text(
                project.title,
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                project.description,
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.grey[600],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Wrap(
                  spacing: 10,
                  children: project.tags
                      .map(
                        (tag) => Chip(
                              backgroundColor: AppColors.redAccent,
                              label: Text(
                                tag,
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                      )
                      .toList()),
              Card(
                elevation: 10,
                child: Container(
                  height: 1,
                  color: Colors.grey,
                ),
              )
            ],
          )),
    );
  }
}
