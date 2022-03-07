import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio/data/section.dart';

import '../../utils/extensions.dart';
import 'sections/about/about.dart';
import 'sections/contact/contact.dart';
import 'sections/education/education.dart';
import 'sections/experience/experience.dart';
import 'sections/services/services.dart';
import 'sections/skills/skills.dart';
import 'sections/work/work.dart';
import 'widgets/drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _pageController = PageController();

  void _onSelectSection(int index) {
    _pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.fastOutSlowIn,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: context.isDesktop ? null : AppBar(),
      drawer: context.isDesktop
          ? null
          : DrawerWidget(
              onSelectSection: _onSelectSection,
            ),
      body: Row(
        children: [
          if (context.isDesktop)
            DrawerWidget(
              elevation: 3,
              onSelectSection: _onSelectSection,
            ),
          Expanded(
            child: PageView(
              onPageChanged: (index) {
                SectionModel.instance.value = index;
              },
              controller: _pageController,
              pageSnapping: false,
              scrollDirection: Axis.vertical,
              children: [
                AboutSection(),
                ServicesSection(),
                SkillsSection(),
                EducationSection(),
                ExperienceSection(),
                WorkSection(),
                ContactSection(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    SectionModel.instance.dispose();
    super.dispose();
  }
}
