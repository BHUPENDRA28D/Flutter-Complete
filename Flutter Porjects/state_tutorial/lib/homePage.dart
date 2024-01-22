import 'package:flutter/material.dart';
import 'package:state_tutorial/calculatePage.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(20),
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text("Welcome to HomePage", style: TextStyle(fontSize: 32)),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CalculatePage()));
                },
                child: Text("Navigate"))
          ]),
        ));
  }
}
