import 'package:flutter/material.dart';
import 'package:flutter_profile/components/animated_progress_indicator.dart';

import '../../../constants.dart';

class Coding extends StatelessWidget {
  const Coding({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "Coding",
            style: TextStyle(
              fontSize: 40,
              color: Colors.white,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.90,
          label: "Java",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.85,
          label: "Dart",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.70,
          label: "Python",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.58,
          label: "JavaScript",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.9,
          label: "HTML",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.75,
          label: "CSS",
        ),
      ],
    );
  }
}
