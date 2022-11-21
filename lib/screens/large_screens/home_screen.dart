import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:verifi_website/theme.dart';

class LargeHomeScreen extends StatelessWidget {
  const LargeHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: primaryColor,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(
            width: width * 0.4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "connect\nwithout limits",
                  style: TextStyle(
                      color: white,
                      fontSize: 60.0,
                      fontWeight: FontWeight.bold),
                ),
                const Text(
                  "we build software that unites digital communities within the physical world",
                  maxLines: 2,
                  style: TextStyle(color: grey, fontSize: 23.0),
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                Container(
                  width: 180.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      border: Border.all(color: white)),
                  child: const Center(
                    child: Text(
                      'Join Our Discord',
                      style: TextStyle(color: white, fontSize: 17.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Lottie.asset("assets/lotties/home_page.json",
              width: width * 0.5, height: height * 0.7)
        ],
      ),
    );
  }
}
