import 'package:codepur1/Pages/Screens/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  int days = 30;
  var name = "Codepur";
  @override
  Widget build(BuildContext context) {
    return HomePage();
  }
}
