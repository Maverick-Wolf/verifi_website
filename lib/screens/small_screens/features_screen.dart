import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:verifi_website/theme.dart';

import '../../widgets/small_card_container.dart';

class SmallFeaturesScreen extends StatelessWidget {
  const SmallFeaturesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: primaryColor,
      body: SizedBox(
        height: height,
        width: width,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const AutoSizeText(
                "current features",
                maxLines: 2,
                style: TextStyle(
                    color: white, fontSize: 40.0, fontWeight: FontWeight.bold),
              ),
              const AutoSizeText(
                "up and running features we have on our platform at the moment",
                maxLines: 2,
                style: TextStyle(
                  color: grey,
                  fontSize: 17.0,
                ),
              ),
              SizedBox(
                height: height * 0.05,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      const SmallCardConatiner(
                          image: "connect",
                          title: "Auto Connect",
                          description:
                              "Our application automatically connects you to nearby WiFi access points which allows you to passively validate access  points and earn incentives."),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      const SmallCardConatiner(
                          image: "dynamic",
                          title: "Dynamic Theming",
                          description:
                              "Every user’s app experience is uniquely themed based off their PFP. Simply add your favorite NFT from your wallet, and automatically see your app change to match."),
                    ],
                  ),
                  SizedBox(
                    width: height * 0.03,
                  ),
                  const SmallCardConatiner(
                      image: "wallet",
                      title: "Wallet Support",
                      description:
                          "Your profile is directly linked to your Ethereum wallet. This allows you to receive airdrops, POAPs, NFT collectibles, and other future incentives."),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
