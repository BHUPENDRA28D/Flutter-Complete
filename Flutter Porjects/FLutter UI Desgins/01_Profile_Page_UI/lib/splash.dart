import 'package:flutter/material.dart';
import 'package:netflix_clone/style.dart';

class splashScreen extends StatelessWidget {
  const splashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xff1e0d2d),
        child: Center(
            child: Text(
          " PROFILE ",
          style: splashText,
        )),
      ),
    );
  }
}
