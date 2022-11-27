import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:verifi_website/screens/large_screens/about_sceen.dart';
import 'package:verifi_website/screens/large_screens/features_screen.dart';
import 'package:verifi_website/screens/large_screens/future_plans_screen.dart';
import 'package:verifi_website/screens/large_screens/home_screen.dart';
import 'package:verifi_website/screens/large_screens/work_screen.dart';
import 'package:verifi_website/theme.dart';

class LargeScreen extends StatefulWidget {
  const LargeScreen({super.key});

  @override
  State<LargeScreen> createState() => _LargeScreenState();
}

class _LargeScreenState extends State<LargeScreen> {
  int _currentIndex = 0;
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
          Row(
            children: [
              SizedBox(
                height: height * 0.89,
                width: width * 0.97,
                child: PageView(
                  controller: controller,
                  onPageChanged: (value) {
                    setState(() {
                      _currentIndex = value;
                    });
                  },
                  pageSnapping: false,
                  scrollDirection: Axis.vertical,
                  children: const [
                    LargeHomeScreen(),
                    LargeWorkScreen(),
                    LargeFeaturesScreen(),
                    LargeFuturePlansScreen(),
                    LargeAboutScreen(),
                  ],
                ),
              ),
              Column(
                children: [
                  InkWell(
                    onTap: () {
                      controller.animateToPage(0,
                          duration: const Duration(milliseconds: 1000),
                          curve: Curves.easeInOutSine);
                    },
                    child: RotatedBox(
                      quarterTurns: 1,
                      child: Text(
                        "Home",
                        style: TextStyle(
                            color:
                                _currentIndex == 0 ? white : Colors.grey[300],
                            fontSize: 15.0,
                            fontWeight: _currentIndex == 0
                                ? FontWeight.bold
                                : FontWeight.normal),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  InkWell(
                    onTap: () {
                      controller.animateToPage(1,
                          duration: const Duration(milliseconds: 1000),
                          curve: Curves.easeInOutSine);
                    },
                    child: RotatedBox(
                      quarterTurns: 1,
                      child: Text(
                        "Work",
                        style: TextStyle(
                            color:
                                _currentIndex == 1 ? white : Colors.grey[300],
                            fontSize: 15.0,
                            fontWeight: _currentIndex == 1
                                ? FontWeight.bold
                                : FontWeight.normal),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  InkWell(
                    onTap: () {
                      controller.animateToPage(2,
                          duration: const Duration(milliseconds: 1000),
                          curve: Curves.easeInOutSine);
                    },
                    child: RotatedBox(
                      quarterTurns: 1,
                      child: Text(
                        "Features",
                        style: TextStyle(
                            color:
                                _currentIndex == 2 ? white : Colors.grey[300],
                            fontSize: 15.0,
                            fontWeight: _currentIndex == 2
                                ? FontWeight.bold
                                : FontWeight.normal),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  InkWell(
                    onTap: () {
                      controller.animateToPage(3,
                          duration: const Duration(milliseconds: 1000),
                          curve: Curves.easeInOutSine);
                    },
                    child: RotatedBox(
                      quarterTurns: 1,
                      child: Text(
                        "Future plans",
                        style: TextStyle(
                            color:
                                _currentIndex == 3 ? white : Colors.grey[300],
                            fontSize: 15.0,
                            fontWeight: _currentIndex == 3
                                ? FontWeight.bold
                                : FontWeight.normal),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  InkWell(
                    onTap: () {
                      controller.animateToPage(4,
                          duration: const Duration(milliseconds: 1000),
                          curve: Curves.easeInOutSine);
                    },
                    child: RotatedBox(
                      quarterTurns: 1,
                      child: Text(
                        "About",
                        style: TextStyle(
                            color:
                                _currentIndex == 4 ? white : Colors.grey[300],
                            fontSize: 15.0,
                            fontWeight: _currentIndex == 4
                                ? FontWeight.bold
                                : FontWeight.normal),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
