import 'package:flutter/material.dart';

const int thresholdSize = 800;

class ResponsiveWidget extends StatelessWidget {
  final Widget largeScreen;
  final Widget smallScreen;

  const ResponsiveWidget({super.key, required this.largeScreen, required this.smallScreen});
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      double width = constraints.maxWidth;
      if (width >= thresholdSize) {
        return largeScreen;
      } else {
        return smallScreen;
      }
    });
  }
}