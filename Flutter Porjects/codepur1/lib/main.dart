import 'package:codepur1/Pages/Screens/splash_page.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Meme App",
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
