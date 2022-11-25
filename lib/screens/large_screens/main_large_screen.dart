import 'package:flutter/material.dart';
import 'package:verifi_website/screens/large_screens/about_sceen.dart';
import 'package:verifi_website/screens/large_screens/features_screen.dart';
import 'package:verifi_website/screens/large_screens/future_plans_screen.dart';
import 'package:verifi_website/screens/large_screens/home_screen.dart';
import 'package:verifi_website/screens/large_screens/work_screen.dart';
import 'package:verifi_website/theme.dart';

class LargeScreen extends StatelessWidget {
  const LargeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    PageController controller = PageController(viewportFraction: 1.0);
    return Scaffold(
      backgroundColor: primaryColor,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 50.0, top: 25.0, right: 50.0),
            child: Row(
              children: [
                Image.asset(
                  'assets/images/logo.png',
                  width: 40.0,
                  height: 40.0,
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
          SizedBox(
              height: height * 0.89,
              child: PageView(
                controller: controller,
                pageSnapping: false,
                scrollDirection: Axis.vertical,
                children: const [
                  // LargeHomeScreen(),
                  // LargeWorkScreen(),
                  // LargeFeaturesScreen(),
                  LargeAboutScreen(),
                  LargeFuturePlansScreen(),
                ],
              )),
        ],
      ),
    );
  }
}
