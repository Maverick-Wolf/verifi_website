import 'package:blobs/blobs.dart';
import 'package:flutter/material.dart';
import 'package:verifi_website/theme.dart';
import 'dart:math' as math;

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
              bottom: 20.0,
              left: 120.0,
              child: Image.asset(
                "assets/images/blob2.png",
                height: 400,
              ),
              // Transform.rotate(
              //   angle: -math.pi * 0.7,
              //   child: Blob.fromID(
              //     id: const ['5-5-32'],
              //     size: 470.0,
              //     styles: BlobStyles(
              //         fillType: BlobFillType.fill,
              //         gradient: const LinearGradient(colors: [
              //           Color(0xFF5FFBF1),
              //           Color(0xFF5679D2),
              //         ]).createShader(const Rect.fromLTRB(00, 100, 300, 400))),
              //   ),
              // ),
            ),
            Positioned(
                bottom: 110.0,
                left: -140.0,
                child: Image.asset(
                  "assets/images/blob1.png",
                  height: 450,
                )
                // Blob.fromID(
                //   id: const ['6-4-32'],
                //   size: 550.0,
                //   styles: BlobStyles(
                //       fillType: BlobFillType.fill,
                //       gradient: const LinearGradient(colors: [
                //         Color(0xFF5FFBF1),
                //         Color(0xFF5679D2),
                //       ]).createShader(const Rect.fromLTRB(0, 00, 300, 300))),
                // ),
                ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: width * 0.4,
                  height: height * 0.5,
                  child: const Text(
                    "Upcoming\nFeatures",
                    style: TextStyle(
                        color: white,
                        fontSize: 60.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                    height: height,
                    width: width * 0.4,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
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
