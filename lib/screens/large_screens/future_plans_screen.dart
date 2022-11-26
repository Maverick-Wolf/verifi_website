import 'package:auto_size_text/auto_size_text.dart';
import 'package:blobs/blobs.dart';
import 'package:flutter/material.dart';
import 'package:verifi_website/theme.dart';

import '../../widgets/crad_container.dart';

class LargeFuturePlansScreen extends StatefulWidget {
  const LargeFuturePlansScreen({Key? key}) : super(key: key);

  @override
  State<LargeFuturePlansScreen> createState() => _LargeFuturePlansScreenState();
}

class _LargeFuturePlansScreenState extends State<LargeFuturePlansScreen> {
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
            Positioned(
              // bottom: -50.0,
              child: Image.asset(
                "assets/images/image2.png",
                width: width * 0.45,
              ),
            ),
            // Positioned(
            //   bottom: 40.0,
            //   left: -40.0,
            //   child: Image.asset("assets/images/image3.png"),
            // ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: width * 0.4,
                  height: height * 0.5,
                  child: const AutoSizeText(
                    "Upcoming\nFeatures",
                    maxLines: 2,
                    style: TextStyle(
                        color: white,
                        fontSize: 60.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                    height: height,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            const CardConatiner(
                                image: "achievements",
                                title: "Achievements",
                                description:
                                    "Contributions earn achievements which can earn you NFT wearables, real world collectibles, and more!"),
                            SizedBox(
                              height: height * 0.03,
                            ),
                            const CardConatiner(
                                image: "minting",
                                title: "VeriFi NFT Mint",
                                description:
                                    "Our own NFTs will be made available, complete with wearables earned from achievements. Early adopters will be added to the whitelist."),
                          ],
                        ),
                        SizedBox(
                          width: height * 0.03,
                        ),
                        const CardConatiner(
                            image: "airdrop",
                            title: "Token Airdrop",
                            description:
                                "Karma will be redeemable for crypto as an ERC-20 token. Check out our whitepaper and roadmap for the future utility behind this token."),
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
