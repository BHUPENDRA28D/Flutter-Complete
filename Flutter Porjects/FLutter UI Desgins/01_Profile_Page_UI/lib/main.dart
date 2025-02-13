import 'package:flutter/material.dart';
import 'package:netflix_clone/appbar.dart';
import 'package:netflix_clone/post.dart';
import 'package:netflix_clone/simpleProfile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xff1e0d2d),
          body: ListView(
            children: [
              Stack(
                children: [
                  MyPost(), //Post
                  Profile(), //Profile
                  MyAppBar(), //AppBar
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
