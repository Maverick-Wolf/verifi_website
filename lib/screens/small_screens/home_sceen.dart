import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:verifi_website/theme.dart';

class SmallHomeScreen extends StatelessWidget {
  const SmallHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: primaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const AutoSizeText(
              "connect\nwithout limits",
              maxLines: 2,
              style: TextStyle(
                  color: white, fontSize: 40.0, fontWeight: FontWeight.bold),
            ),
            const AutoSizeText(
              "we build software that unites digital communities within the physical world",
              maxLines: 2,
              style: TextStyle(color: grey, fontSize: 17.0),
            ),
            SizedBox(
              height: height * 0.05,
            ),
            Container(
              width: 120.0,
              height: 35.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  border: Border.all(color: white)),
              child: const Center(
                child: AutoSizeText(
                  'Join Our Discord',
                  style: TextStyle(color: white, fontSize: 13.0),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.05,
            ),
            Center(
              child: Lottie.asset("assets/lotties/home_page.json",
                  width: width * 0.8, height: height * 0.4),
            )
          ],
        ),
      ),
    );
  }
}
