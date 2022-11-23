import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:verifi_website/theme.dart';

class LargeWorkScreen extends StatelessWidget {
  const LargeWorkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: primaryColor,
        body: Row(
          children: [
            SizedBox(
              width: width * 0.4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 30.0,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 60.0),
                    child: Text(
                      "Work Anywhere",
                      style: TextStyle(
                          color: white,
                          fontSize: 45.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 60.0),
                    child: Text(
                      "The biggest challenge for people who have chosen to work abroad full-time is finding free, reliable WiFi. We plan to fix that.",
                      style: TextStyle(color: grey, fontSize: 17.0),
                    ),
                  ),
                  Lottie.asset("assets/lotties/work_page.json",
                      width: width * 0.4, height: height * 0.65),
                ],
              ),
            ),
            SizedBox(
              width: width * 0.08,
            ),
            SizedBox(
              width: width * 0.5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Spacer(
                    flex: 3,
                  ),
                  SizedBox(
                    width: width * 0.35,
                    child: const Text(
                      "Collect WiFi",
                      style: TextStyle(
                          color: white,
                          fontSize: 45.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    width: width * 0.35,
                    child: const Text(
                      "We combine web3 crypto incentives with achievement-based gamification to reward user contributions at scale. Add more WiFi access points to the network, to earn more",
                      style: TextStyle(color: grey, fontSize: 17.0),
                    ),
                  ),
                  const Spacer(
                    flex: 2,
                  ),
                  Center(
                    child: SizedBox(
                      width: width * 0.35,
                      child: const Text(
                        "Get Paid",
                        style: TextStyle(
                            color: white,
                            fontSize: 45.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Center(
                    child: SizedBox(
                      width: width * 0.35,
                      child: const Text(
                        "Users will continuously be incentivized for adding new access points, validating existing access points, and completing achievements. These incentives will be exchangable for future airdrops, NFT whitelists, and more.",
                        style: TextStyle(color: grey, fontSize: 17.0),
                      ),
                    ),
                  ),
                  const Spacer(
                    flex: 2,
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
