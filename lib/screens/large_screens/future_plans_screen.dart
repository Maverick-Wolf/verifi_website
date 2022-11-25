import 'package:blobs/blobs.dart';
import 'package:flutter/material.dart';
import 'package:verifi_website/theme.dart';

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
              bottom: -50.0,
              left: 50.0,
              child: Blob.fromID(
                id: const ['6-4-32'],
                size: 470.0,
                styles: BlobStyles(
                    fillType: BlobFillType.fill,
                    gradient: const LinearGradient(colors: [
                      Color(0xFF5FFBF1),
                      Color(0xFF5679D2),
                    ]).createShader(const Rect.fromLTRB(0, 00, 300, 300))),
              ),
            ),
            Positioned(
              bottom: 40.0,
              left: -40.0,
              child: Blob.fromID(
                id: const ['6-4-32'],
                size: 550.0,
                styles: BlobStyles(
                    fillType: BlobFillType.fill,
                    gradient: const LinearGradient(colors: [
                      Color(0xFF5FFBF1),
                      Color(0xFF5679D2),
                    ]).createShader(const Rect.fromLTRB(0, 00, 300, 300))),
              ),
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
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(10.0),
                              decoration: const BoxDecoration(
                                  color: lightGrey,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20.0))),
                              height: height * 0.38,
                              width: width * 0.1851,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Image.asset(
                                    'assets/images/achievements.png',
                                    height: height * 0.09,
                                    width: width * 0.058,
                                  ),
                                  const Text(
                                    "Achievements",
                                    style: TextStyle(
                                        color: white,
                                        fontSize: 24.0,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: font),
                                  ),
                                  const Text(
                                    "Contributions earn achievements which can earn you NFT wearables, real world collectibles, and more!",
                                    style: TextStyle(
                                        color: grey,
                                        fontSize: 12.0,
                                        fontFamily: font),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: height * 0.03,
                            ),
                            Container(
                              padding: const EdgeInsets.all(10.0),
                              decoration: const BoxDecoration(
                                  color: lightGrey,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20.0))),
                              height: height * 0.38,
                              width: width * 0.1851,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Image.asset(
                                    'assets/images/minting.png',
                                    height: height * 0.09,
                                    width: width * 0.058,
                                  ),
                                  const Text(
                                    "VeriFi NFT Mint",
                                    style: TextStyle(
                                        color: white,
                                        fontSize: 24.0,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: font),
                                  ),
                                  const Text(
                                    "Our own NFTs will be made available, complete with wearables earned from achievements. Early adopters will be added to the whitelist.",
                                    style: TextStyle(
                                        color: grey,
                                        fontSize: 12.0,
                                        fontFamily: font),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: height * 0.03,
                        ),
                        Container(
                          padding: const EdgeInsets.all(10.0),
                          decoration: const BoxDecoration(
                              color: lightGrey,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20.0))),
                          height: height * 0.38,
                          width: width * 0.1851,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Image.asset(
                                'assets/images/airdrop.png',
                                height: height * 0.09,
                                width: width * 0.058,
                              ),
                              const Text(
                                "Token Airdrop",
                                style: TextStyle(
                                    color: white,
                                    fontSize: 24.0,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: font),
                              ),
                              const Text(
                                "Karma will be redeemable for crypto as an ERC-20 token. Check out our whitepaper and roadmap for the future utility behind this token.",
                                style: TextStyle(
                                    color: grey,
                                    fontSize: 12.0,
                                    fontFamily: font),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
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
