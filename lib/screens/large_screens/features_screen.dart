import 'package:blobs/blobs.dart';
import 'package:flutter/material.dart';
import 'package:swipe_cards/swipe_cards.dart';
import 'package:verifi_website/theme.dart';

double width =
    MediaQueryData.fromWindow(WidgetsBinding.instance.window).size.width;
double height =
    MediaQueryData.fromWindow(WidgetsBinding.instance.window).size.height;
List screens = [
  Container(
    height: height * 0.58,
    width: width * 0.241,
    decoration: BoxDecoration(
        color: lightGrey,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.grey)),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          "assets/images/connect.png",
          width: 100.0,
          height: 100.0,
        ),
        const SizedBox(
          height: 30.0,
        ),
        const Text(
          "Auto Connect",
          style: TextStyle(
              color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 10.0,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.0),
          child: Text(
              "Our application automatically connects you to nearby WiFi access points which allows you to passively validate access points and earn incentives.",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: grey, fontSize: 15.0, fontWeight: FontWeight.w400)),
        ),
      ],
    ),
  ),
  Container(
    height: height * 0.58,
    width: width * 0.241,
    decoration: BoxDecoration(
        color: lightGrey,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.grey)),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          "assets/images/dynamic.png",
          width: 100.0,
          height: 100.0,
        ),
        const SizedBox(
          height: 30.0,
        ),
        const Text(
          "Dynamic Theming",
          style: TextStyle(
              color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 10.0,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.0),
          child: Text(
              "Every user’s app experience is uniquely themed based off your PFP. Simply add your favorite NFT from your wallet, and automatically see your app change to match.",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: grey, fontSize: 15.0, fontWeight: FontWeight.w400)),
        ),
      ],
    ),
  ),
  Container(
    height: height * 0.58,
    width: width * 0.241,
    decoration: BoxDecoration(
        color: lightGrey,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.grey)),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          "assets/images/wallet.png",
          width: 100.0,
          height: 100.0,
        ),
        const SizedBox(
          height: 30.0,
        ),
        const Text(
          "Wallet Support",
          style: TextStyle(
              color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 10.0,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.0),
          child: Text(
              "Your profile is directly linked to your Ethereum wallet. This allows you to receive airdrops, POAPs, NFT collectibles, and other future incentives.",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: grey, fontSize: 15.0, fontWeight: FontWeight.w400)),
        ),
      ],
    ),
  ),
];

class LargeFeaturesScreen extends StatefulWidget {
  const LargeFeaturesScreen({super.key});

  @override
  State<LargeFeaturesScreen> createState() => _LargeFeaturesScreenState();
}

class _LargeFeaturesScreenState extends State<LargeFeaturesScreen> {
  List<SwipeItem> swipeItems = [];
  List<SwipeItem> swipeItems2 = [];
  late MatchEngine _matchEngine;

  @override
  void initState() {
    for (int i = 0; i < 3; i++) {
      swipeItems.add(SwipeItem(
        content: screens[i],
      ));
    }
    swipeItems2.addAll(swipeItems);
    swipeItems.addAll(swipeItems2);
    swipeItems.addAll(swipeItems2);
    swipeItems.addAll(swipeItems2);
    swipeItems.addAll(swipeItems2);
    swipeItems.addAll(swipeItems2);
    swipeItems.addAll(swipeItems2);
    swipeItems.addAll(swipeItems2);
    swipeItems.addAll(swipeItems2);
    swipeItems.addAll(swipeItems2);
    swipeItems.addAll(swipeItems2);
    swipeItems.addAll(swipeItems2);
    swipeItems.addAll(swipeItems2);
    _matchEngine = MatchEngine(swipeItems: swipeItems);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SizedBox(
        width: width,
        height: height * 0.87,
        child: Stack(
          children: [
            Positioned(
              bottom: -150.0,
              left: -150.0,
              child: Blob.fromID(
                id: const ['6-4-32'],
                size: 470.0,
                styles: BlobStyles(
                    gradient: const LinearGradient(
                            colors: [Color(0xFFff5f6d), Color(0xFFffc371)])
                        .createShader(const Rect.fromLTRB(0, 0, 300, 300))),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: width * 0.4,
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
                  height: height * 0.58,
                  width: width * 0.241,
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                        left: -20.0,
                        top: -20.0,
                        child: Container(
                          height: height * 0.58,
                          width: width * 0.241,
                          decoration: BoxDecoration(
                              color: lightGrey,
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(color: Colors.grey)),
                        ),
                      ),
                      Positioned(
                        left: -10.0,
                        top: -10.0,
                        child: Container(
                          height: height * 0.58,
                          width: width * 0.241,
                          decoration: BoxDecoration(
                              color: lightGrey,
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(color: Colors.grey)),
                        ),
                      ),
                      SwipeCards(
                        matchEngine: _matchEngine,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            alignment: Alignment.center,
                            child: swipeItems[index].content,
                          );
                        },
                        onStackFinished: () {
                          setState(() {
                            swipeItems.addAll(swipeItems2);
                          });
                        },
                        upSwipeAllowed: false,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
