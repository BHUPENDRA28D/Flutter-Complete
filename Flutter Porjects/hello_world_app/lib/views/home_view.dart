import 'package:flutter/material.dart';
import 'package:hello_world_app/views/calculater.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      // appBar: AppBar(
      //   title: Text('Calculator'),
      // ),
      body: SafeArea(
        bottom: false,
        child: CalculatorView(),
      ),
    );
  }
}
