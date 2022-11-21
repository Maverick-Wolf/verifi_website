import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:verifi_website/screens/large_screens/large_screen.dart';
import 'package:verifi_website/screens/small_screens/small_screen.dart';
import 'package:verifi_website/widgets/responsiveness.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: ScrollBehavior(),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ResponsiveWidget(
          largeScreen: LargeScreen(), smallScreen: SmallScreen()),
    );
  }
}

class ScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
        PointerDeviceKind.trackpad,
      };
}
