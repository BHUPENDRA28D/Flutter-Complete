import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:codepur1/Pages/Screens/home_page.dart';
import 'package:flutter/material.dart';

class SplashAnimation extends StatelessWidget {
  const SplashAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Container(
        alignment: Alignment.center,
        child: Image.asset("assets\images\ms.png"),
      ),
      nextScreen: HomePage(),
      splashIconSize: 350,
      duration: 2500,
      splashTransition: SplashTransition.fadeTransition,
    );
  }
}
