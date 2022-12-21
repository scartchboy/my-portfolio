import 'package:flutter/material.dart';
import 'package:flutter_profile/constants/images_constants.dart';
import 'package:flutter_profile/constants/string_constants.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: Color(0xFF242430),
        child: Column(
          children: [
            Spacer(flex: 2),
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(AppImages.profileImage),
            ),
            Spacer(),
            Text(
              "${Strings.firstName}  ${Strings.lastName}",
              style: Theme.of(context).textTheme.subtitle2,
            ),
            Text(
              Strings.designation,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w200,
                height: 1.5,
              ),
            ),
            Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
