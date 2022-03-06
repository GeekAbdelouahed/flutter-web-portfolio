import 'package:flutter/material.dart';

import '../../utils/extensions.dart';
import 'widgets/drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: context.isDesktop ? null : AppBar(),
      drawer: context.isDesktop ? null : DrawerWidget(),
      body: Row(
        children: [
          if (context.isDesktop)
            DrawerWidget(
              elevation: 3,
            ),
        ],
      ),
    );
  }
}
