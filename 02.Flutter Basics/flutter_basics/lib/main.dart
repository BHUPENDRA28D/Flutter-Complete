import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("Widgets"),
      ),
      body: const Text(
        "Hello Bhupendra",
        textDirection: TextDirection.rtl,
        textAlign: TextAlign.right,
        overflow: TextOverflow.ellipsis,
        textScaleFactor: 5,
        maxLines: 1,
        style: TextStyle(color: Colors.red),
      ),
    ),
  ));
}
