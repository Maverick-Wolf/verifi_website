import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:verifi_website/theme.dart';

class SmallCardConatiner extends StatefulWidget {
  final String image;
  final String title;
  final String description;
  const SmallCardConatiner(
      {required this.image,
      super.key,
      required this.title,
      required this.description});

  @override
  State<SmallCardConatiner> createState() => _SmallCardConatinerState();
}

class _SmallCardConatinerState extends State<SmallCardConatiner> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    final hoveredTransform = Matrix4.identity()..scale(1.05);
    final transform = isHovered ? hoveredTransform : Matrix4.identity();
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return MouseRegion(
      onEnter: (event) => onEntered(true),
      onExit: (event) => onEntered(false),
      child: AnimatedContainer(
        transformAlignment: FractionalOffset.center,
        duration: const Duration(milliseconds: 200),
        transform: transform,
        padding: const EdgeInsets.all(10.0),
        decoration: const BoxDecoration(
            color: lightGrey,
            borderRadius: BorderRadius.all(Radius.circular(20.0))),
        height: height * 0.28,
        width: width * 0.4,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(
              'assets/images/${widget.image}.png',
              height: height * 0.10,
              // width: width * 0.1,
            ),
            AutoSizeText(
              widget.title,
              maxLines: 1,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  color: white,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                  fontFamily: font),
            ),
            Text(
              widget.description,
              maxLines: 6,
              style: const TextStyle(
                  color: grey, fontSize: 10.0, fontFamily: font),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  void onEntered(bool _bool) {
    setState(() {
      isHovered = _bool;
    });
  }
}
