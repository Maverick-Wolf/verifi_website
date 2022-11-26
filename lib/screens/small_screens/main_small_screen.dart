import 'package:flutter/material.dart';
import 'package:verifi_website/screens/small_screens/home_sceen.dart';
import 'package:verifi_website/theme.dart';

class SmallScreen extends StatelessWidget {
  const SmallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    PageController controller = PageController(viewportFraction: 1.0);
    return Scaffold(
      backgroundColor: primaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/logo.png',
                    width: 35.0,
                    height: 35.0,
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  const Text(
                    'VeriFi',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 23.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                SizedBox(
                  height: height * 0.89,
                  width: width - 60.0,
                  child: PageView(
                    controller: controller,
                    pageSnapping: false,
                    scrollDirection: Axis.vertical,
                    children: const [
                      SmallHomeScreen(),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}