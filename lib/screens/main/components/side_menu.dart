import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_profile/constants/list_constants.dart';
import 'package:flutter_svg/svg.dart';

import 'details_testimonails.dart';
import 'my_info.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            MyInfo(),
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(defaultPadding),
                child: Column(
                  children: [
                    DetailsTestiMonials(
                      title: "about ",
                      details: ListConstants.personalDetails,
                    ),
                    Divider(),
                    DetailsTestiMonials(
                      title: "Qualification",
                      details: ListConstants.educationDetails,
                    ),
                    Divider(),
                    DetailsTestiMonials(
                      title: "Location",
                      details: ListConstants.locationDetails,
                    ),
                    Divider(),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: defaultPadding),
              child: TextButton(
                onPressed: () {},
                child: FittedBox(
                  child: Row(
                    children: [
                      Text(
                        "DOWNLOAD CV",
                        style: TextStyle(
                          color: Theme.of(context).textTheme.bodyText1!.color,
                        ),
                      ),
                      SizedBox(width: defaultPadding / 2),
                      SvgPicture.asset("assets/icons/download.svg")
                    ],
                  ),
                ),
              ),
            ),
            Container(
              color: Color(0xFF24242E),
              child: Row(
                children: [
                  Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset("assets/icons/linkedin.svg"),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset("assets/icons/github.svg"),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset("assets/icons/twitter.svg"),
                  ),
                  Spacer(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
