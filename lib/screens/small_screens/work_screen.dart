import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:verifi_website/theme.dart';

class SmallWorkScreen extends StatelessWidget {
  const SmallWorkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: primaryColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Spacer(),
          const AutoSizeText(
            "Work Anywhere",
            maxLines: 2,
            style: TextStyle(
                color: white, fontSize: 25.0, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 5.0,
          ),
          const AutoSizeText(
            "The biggest challenge for people who have chosen to work abroad full-time is finding free, reliable WiFi. We plan to fix that.",
            maxLines: 2,
            style: TextStyle(color: grey, fontSize: 13.0),
          ),
          const Spacer(),
          const AutoSizeText(
            "Collect WiFi",
            maxLines: 2,
            style: TextStyle(
                color: white, fontSize: 25.0, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 5.0,
          ),
          const AutoSizeText(
            "We combine web3 crypto incentives with achievement-based gamification to reward user contributions at scale. Add more WiFi access points to the network, to earn more",
            maxLines: 2,
            style: TextStyle(color: grey, fontSize: 13.0),
          ),
          const Spacer(),
          const AutoSizeText(
            "Get Paid",
            maxLines: 2,
            style: TextStyle(
                color: white, fontSize: 25.0, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 5.0,
          ),
          const AutoSizeText(
            "Users will continuously be incentivized for adding new access points, validating existing access points, and completing achievements. These incentives will be exchangable for future airdrops, NFT whitelists, and more.",
            maxLines: 2,
            style: TextStyle(color: grey, fontSize: 13.0),
          ),
          const Spacer(
            flex: 2,
          ),
          Lottie.asset("assets/lotties/work_page.json",
              width: width * 0.8, height: height * 0.45),
        ],
      ),
    );
  }
}
