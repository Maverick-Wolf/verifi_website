import 'package:auto_size_text/auto_size_text.dart';
import 'package:blobs/blobs.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:verifi_website/constants.dart';
import 'package:verifi_website/theme.dart';

class LargeAboutScreen extends StatefulWidget {
  const LargeAboutScreen({super.key});

  @override
  State<LargeAboutScreen> createState() => _LargeAboutScreenState();
}

class _LargeAboutScreenState extends State<LargeAboutScreen> {
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
            // Positioned(
            //   bottom: 160.0,
            //   left: 280.0,
            //   child: Image.asset(
            //     "assets/images/blob3.png",
            //     height: 400,
            //   ),
            // Blob.fromID(
            //   id: const ['6-4-32'],
            //   size: 500.0,
            //   styles: BlobStyles(
            //       fillType: BlobFillType.fill,
            //       gradient: const LinearGradient(colors: [
            //         Color(0xFF5FFBF1),
            //         Color(0xFF5679D2),
            //       ]).createShader(const Rect.fromLTRB(300, 00, 00, 300))),
            // ),
            // ),
            // Positioned(
            //   top: 20.0,
            //   left: 450.0,
            //   child: Image.asset(
            //     "assets/images/blob4.png",
            //     height: 550,
            //   ),
            // Blob.fromID(
            //   id: const ['5-4-32'],
            //   size: 700.0,
            //   styles: BlobStyles(
            //       fillType: BlobFillType.fill,
            //       gradient: const LinearGradient(colors: [
            //         Color(0xFF5FFBF1),
            //         Color(0xFF5679D2),
            //       ]).createShader(const Rect.fromLTRB(0, 00, 300, 300))),
            // ),
            // ),
            Positioned(
              top: -10.0,
              left: width * 0.264,
              child: Image.asset(
                "assets/images/blob3.png",
                height: height * 0.89,
              ),
            ),
            Center(
              child: SizedBox(
                height: height * 0.6,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const AutoSizeText(
                      "About",
                      maxLines: 1,
                      style: TextStyle(
                          color: white,
                          fontSize: 56.0,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: width * 0.45,
                      child: const AutoSizeText(
                        aboutText,
                        style: TextStyle(
                            color: white,
                            fontSize: 16.0,
                            // fontFamily: "Sans",
                            fontWeight: FontWeight.w500),
                        maxLines: 5,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Contact Us",
                      style: TextStyle(
                          color: white,
                          fontSize: 32.0,
                          fontWeight: FontWeight.bold),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        FaIcon(
                          FontAwesomeIcons.github,
                          color: white,
                          size: 40,
                        ),
                        SizedBox(width: 32),
                        FaIcon(
                          FontAwesomeIcons.linkedin,
                          color: white,
                          size: 40,
                        ),
                        SizedBox(width: 32),
                        FaIcon(
                          FontAwesomeIcons.twitter,
                          color: white,
                          size: 40,
                        ),
                        SizedBox(width: 32),
                        Icon(
                          Icons.mail,
                          color: white,
                          size: 40,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
