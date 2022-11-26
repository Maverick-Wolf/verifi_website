import 'package:blobs/blobs.dart';
import 'package:flutter/material.dart';
import 'package:verifi_website/theme.dart';
import 'package:verifi_website/widgets/crad_container.dart';

class LargeFeaturesScreen extends StatefulWidget {
  const LargeFeaturesScreen({Key? key}) : super(key: key);

  @override
  State<LargeFeaturesScreen> createState() => _LargeFeaturesScreenState();
}

class _LargeFeaturesScreenState extends State<LargeFeaturesScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: primaryColor,
      body: SizedBox(
        width: width,
        height: height * 0.87,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomLeft,
              child: Image.asset(
                "assets/images/image1.png",
                width: width * 0.2,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: width * 0.4,
                  height: height * 0.5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "Current\nFeatures",
                        style: TextStyle(
                            color: white,
                            fontSize: 60.0,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "up and running features we have on our platform at the moment",
                        maxLines: 2,
                        style: TextStyle(color: grey, fontSize: 23.0),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                    height: height,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const CardConatiner(
                            image: "connect",
                            title: "Auto Connect",
                            description:
                                "Our application automatically connects you to nearby WiFi access points which allows you to passively validate access points and earn incentives."),
                        SizedBox(
                          width: height * 0.03,
                        ),
                        Column(
                          children: [
                            const CardConatiner(
                                image: "dynamic",
                                title: "Dynamic Theming",
                                description:
                                    "Every user’s app experience is uniquely themed based off your PFP. Simply add your favorite NFT from your wallet, and automatically see your app change to match."),
                            SizedBox(
                              height: height * 0.03,
                            ),
                            const CardConatiner(
                                image: "wallet",
                                title: "Wallet Support",
                                description:
                                    "Your profile is directly linked to your Ethereum wallet. This allows you to receive airdrops, POAPs, NFT collectibles, and other future incentives."),
                          ],
                        ),
                      ],
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
