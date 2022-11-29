import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:verifi_website/constants.dart';
import 'package:verifi_website/theme.dart';

class SmallAboutScreen extends StatefulWidget {
  const SmallAboutScreen({Key? key}) : super(key: key);

  @override
  State<SmallAboutScreen> createState() => _SmallAboutScreenState();
}

class _SmallAboutScreenState extends State<SmallAboutScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: primaryColor,
      body: SizedBox(
        height: height,
        width: width,
        child: Stack(
          children: [
            Positioned(
                top: -40.0,
                left: -30,
                child: Image.asset(
                  "assets/images/blob5.png",
                  height: 450,
                )),
            Positioned(
                top: 0.0,
                right: -150.0,
                child: Image.asset(
                  "assets/images/blob6.png",
                  height: 550,
                )),
            Positioned(
                bottom: -150.0,
                left: -120.0,
                child: Image.asset(
                  "assets/images/blob2.png",
                  height: 300,
                )),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const AutoSizeText(
                  "about",
                  maxLines: 2,
                  style: TextStyle(
                      color: white,
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 60.0),
                  child: AutoSizeText(
                    aboutText,
                    maxLines: 6,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: white,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w300,
                        fontFamily: "Sans"),
                  ),
                ),
                SizedBox(
                  height: height * 0.15,
                ),
                const AutoSizeText(
                  "contact us",
                  maxLines: 2,
                  style: TextStyle(
                      color: white,
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                AnimationLimiter(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: AnimationConfiguration.toStaggeredList(
                      duration: const Duration(milliseconds: 600),
                      childAnimationBuilder: (widget) => SlideAnimation(
                        child: FadeInAnimation(
                          child: widget,
                        ),
                      ),
                      children: const [
                        FaIcon(
                          FontAwesomeIcons.github,
                          color: white,
                          size: 32,
                        ),
                        SizedBox(width: 32),
                        FaIcon(
                          FontAwesomeIcons.linkedin,
                          color: white,
                          size: 32,
                        ),
                        SizedBox(width: 32),
                        FaIcon(
                          FontAwesomeIcons.twitter,
                          color: white,
                          size: 32,
                        ),
                        SizedBox(width: 32),
                        Icon(
                          Icons.mail,
                          color: white,
                          size: 32,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
