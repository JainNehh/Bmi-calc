import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'bmi.dart';
class animate extends StatefulWidget {
  const animate({super.key});

  @override
  State<animate> createState() => _animateState();
}

class _animateState extends State<animate> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Clean Code',
        home: AnimatedSplashScreen(
            duration: 5,
            splash: "assets/bmi.png",
            nextScreen: bmi(),
            splashTransition: SplashTransition.rotationTransition,
            pageTransitionType: PageTransitionType.rightToLeft,
            backgroundColor: Color(0xFFA34DEC)));
  }
}