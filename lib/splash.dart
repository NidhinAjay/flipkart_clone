import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';

import 'home.dart';

class Splesh extends StatefulWidget {
  const Splesh({Key? key}) : super(key: key);

  @override
  State<Splesh> createState() => _SpleshState();
}

class _SpleshState extends State<Splesh> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      backgroundColor: Color(0xff3374FF),
      duration: 3000,
        splash: "images/flipkart-icon.jpg",
        nextScreen: home());
  }
}
