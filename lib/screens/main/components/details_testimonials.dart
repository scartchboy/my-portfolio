import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/details.dart';
import 'area_info_text.dart';

class DetailsTestiMonials extends StatefulWidget {
  DetailsTestiMonials({required this.details, required this.title});
  String title;
  List<Details> details;

  @override
  State<DetailsTestiMonials> createState() => _DetailsTestiMonialsState();
}

class _DetailsTestiMonialsState extends State<DetailsTestiMonials> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: defaultPadding),
          child: Text(
            "${widget.title} Details",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        ...List.generate(
          widget.details.length,
          (index) => AreaInfoText(
            title: widget.details[index].title,
            text: widget.details[index].detail,
          ),
        )
      ],
    );
  }
}
