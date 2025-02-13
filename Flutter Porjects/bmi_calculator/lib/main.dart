import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var wrController = TextEditingController( );
  var ftController =TextEditingController();
  var inController = TextEditingController();
  
  
  
  @override

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("BMI Calculator"),
        ),
        body: Column(
          children: [
            Text(
              'BMI',
              style: TextStyle(fontSize: 34, fontWeight:FontWeight.w700),
            ),

            TextField(
              controller: wrController,
              decoration: InputDecoration(
                label: Text("Enter your weight (kg)");
                prefixIcon: Icon(Icons.line_weight);
              ),
              keyboardType: TextInputType.number,
            
    )

     TextField(
              controller: wrController,
              decoration: InputDecoration(
                label: Text("Enter your height (ft)");
                prefixIcon: Icon(Icons.line.height);
              ),
              keyboardType: TextInputType.number,
            
    )
          ],
        ));
  }
}
