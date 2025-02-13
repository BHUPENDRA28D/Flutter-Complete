import 'package:flutter/material.dart';
import 'package:login_ui/login_Page.dart';
import 'package:login_ui/pallate.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Login Page",
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: Pallete.backgroundColor,
        ),
        home: LoginScreen());
  }
}
