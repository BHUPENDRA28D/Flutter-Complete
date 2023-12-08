import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final int days = 30;
  final String course = 'Flutter';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cataloge App"),
      ),
      body: Center(
          child: Container(
        child: Text("This is $days $course learning Challange"),
      )),
      drawer: Drawer(
        backgroundColor: Colors.amber,
        elevation: 3.23,
      ),
    );
  }
}
