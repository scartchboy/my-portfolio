import 'package:flutter/material.dart';
import 'package:shaurya_portfolio/screens/main/main_screen.dart';

import '../../constants.dart';
import '../main/components/coding.dart';
import '../main/components/skills.dart';
import 'components/home_banner.dart';
import 'components/my_projects.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainScreen(
      children: [
        HomeBanner(),
        SizedBox(height: defaultPadding),
        Coding(),
        SizedBox(height: defaultPadding),
        Skills(),
        SizedBox(height: defaultPadding),
        MyProjects(),
        // Knowledges(),
        // HighLightsInfo(),
        // Recommendations(),
      ],
    );
  }
}
