import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:verifi_website/theme.dart';
import 'package:verifi_website/widgets/small_card_container.dart';

class SmallFuturePlansScreen extends StatefulWidget {
  const SmallFuturePlansScreen({Key? key}) : super(key: key);

  @override
  State<SmallFuturePlansScreen> createState() => _SmallFuturePlansScreenState();
}

class _SmallFuturePlansScreenState extends State<SmallFuturePlansScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: primaryColor,
      body: SizedBox(
        height: height,
        width: width,
        child: Stack(
          children: [
            Positioned(
                top: 0.0,
                left: -120.0,
                child: Image.asset(
                  "assets/images/blob1.png",
                  height: 240,
                )),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const AutoSizeText(
                    "upcoming\nfeatures",
                    maxLines: 2,
                    style: TextStyle(
                        color: white,
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: height * 0.05,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SmallCardConatiner(
                          image: "airdrop",
                          title: "Token Airdrop",
                          description:
                              "Karma will be redeemable for crypto as an ERC-20 token. Check out our whitepaper and roadmap for the future utility behind this token."),
                      SizedBox(
                        width: height * 0.03,
                      ),
                      Column(
                        children: [
                          const SmallCardConatiner(
                              image: "achievements",
                              title: "Achievements",
                              description:
                                  "Contributions earn achievements which can earn you NFT wearables, real world collectibles, and more!"),
                          SizedBox(
                            height: height * 0.03,
                          ),
                          const SmallCardConatiner(
                              image: "minting",
                              title: "VeriFi NFT Mint",
                              description:
                                  "Our own NFTs will be made available, complete with wearables earned from achievements. Early adopters will be added to the whitelist."),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
