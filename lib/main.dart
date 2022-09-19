import 'dart:ui';

import 'package:beatuifuldesign/screens/DetailsSecreen.dart';
import 'package:beatuifuldesign/screens/LandingScreen.dart';
import 'package:beatuifuldesign/utils/constants.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    double screenWidth=window.physicalSize.width;
    return MaterialApp(
      showSemanticsDebugger: false,
      title: 'Flutter Demo',
      theme: ThemeData(
      primaryColor: COLOR_WHITE,accentColor: COLOR_DARK_BLUE,
        textTheme: screenWidth<500?TEXT_THEME_SMALL:TEXT_THEME_DEFAULT

      ),
      home: const LandingSecreen(),
    );
  }
}

