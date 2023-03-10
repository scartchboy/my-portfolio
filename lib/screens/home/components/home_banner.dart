import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:shaurya_portfolio/constants/images_constants.dart';
import 'package:shaurya_portfolio/responsive.dart';

import '../../../constants.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: Responsive.isMobile(context) ? 2.5 : 3,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            AppImages.developingBg,
            fit: BoxFit.cover,
          ),
          Container(color: darkColor.withOpacity(0.84)),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Hey There, Wanna Build Complete Application \n I can help you :)",
                  style: Responsive.isDesktop(context)
                      ? Theme.of(context).textTheme.headline3!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          )
                      : Theme.of(context).textTheme.headline5!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                ),
                if (Responsive.isMobileLarge(context))
                  const SizedBox(height: defaultPadding / 2),
                MyBuildAnimatedText(),
                SizedBox(height: defaultPadding),
                // if (!Responsive.isMobileLarge(context))
                //   ElevatedButton(
                //     onPressed: () {},
                //     style: TextButton.styleFrom(
                //       padding: EdgeInsets.symmetric(
                //           horizontal: defaultPadding * 2,
                //           vertical: defaultPadding),
                //       backgroundColor: primaryColor,
                //     ),
                //     child: Text(
                //       "EXPLORE NOW",
                //       style: TextStyle(color: darkColor),
                //     ),
                //   ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class MyBuildAnimatedText extends StatelessWidget {
  const MyBuildAnimatedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      // it applies same style to all the widgets under it
      style: Theme.of(context).textTheme.subtitle1!,
      maxLines: 1,
      child: Row(
        children: [
          if (!Responsive.isMobileLarge(context)) FlutterCodedText(),
          if (!Responsive.isMobileLarge(context))
            SizedBox(width: defaultPadding / 2),
          Text(
            "I build ",
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
          Responsive.isMobile(context)
              ? Expanded(child: AnimatedText())
              : AnimatedText(),
          if (!Responsive.isMobileLarge(context))
            SizedBox(width: defaultPadding / 2),
          if (!Responsive.isMobileLarge(context)) FlutterCodedText(),
        ],
      ),
    );
  }
}

class AnimatedText extends StatelessWidget {
  const AnimatedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      animatedTexts: [
        TyperAnimatedText(
          "responsive web and mobile app.",
          textStyle: TextStyle(fontSize: 25),
          speed: Duration(milliseconds: 80),
        ),
        TyperAnimatedText(
          "complete an robust app.",
          textStyle: TextStyle(fontSize: 25),
          speed: Duration(milliseconds: 80),
        ),
        TyperAnimatedText(
          "end-to-end Android and IOS app",
          textStyle: TextStyle(fontSize: 25),
          speed: Duration(milliseconds: 80),
        ),
      ],
    );
  }
}

class FlutterCodedText extends StatelessWidget {
  const FlutterCodedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: "<",
        style: TextStyle(color: Colors.white, fontSize: 25),
        children: [
          TextSpan(
            text: "flutter",
            style: TextStyle(color: primaryColor, fontSize: 25),
          ),
          TextSpan(
            text: ">",
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
        ],
      ),
    );
  }
}
