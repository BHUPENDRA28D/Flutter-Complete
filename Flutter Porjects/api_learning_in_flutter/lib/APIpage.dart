import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class APIPage extends StatefulWidget {
  const APIPage({super.key});

  @override
  State<APIPage> createState() => _APIPageState();
}

class _APIPageState extends State<APIPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "API Integration",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.refresh),
          ),
        ],
        elevation: 2.0,
        leading: const Icon(CupertinoIcons.back),
        centerTitle: true,
      ),
    );
  }
}
