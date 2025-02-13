import 'package:flutter/material.dart';

class CalculatePage extends StatefulWidget {
  const CalculatePage({super.key});

  @override
  State<CalculatePage> createState() => _CalculatePageState();
}

class _CalculatePageState extends State<CalculatePage> {
  var no1Controller = TextEditingController();
  var no2Controller = TextEditingController();
  var result = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Basic Calculation"),
      ),
      body: Container(
        padding: EdgeInsets.all(30),
        color: Colors.blue.shade50,
        child: Center(
          child: Column(
            children: [
              TextField(
                controller: no1Controller,
              ),
              TextField(
                controller: no2Controller,
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          var no1 = int.parse(no1Controller.text.toString());
                          var no2 = int.parse(no2Controller.text.toString());
                          var sum = no1 + no2;
                          result = 'The sum is $sum';
                          setState(() {});
                        },
                        child: Text('Add')),
                    ElevatedButton(
                        onPressed: subtract, child: Text('Subtract')),
                    ElevatedButton(
                        onPressed: multiply, child: Text('Multiple')),
                    ElevatedButton(onPressed: divide, child: Text('Divide')),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  "Result: $result",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void subtract() {
    setState(() {
      var no1 = int.parse(no1Controller.text.toString());
      var no2 = int.parse(no2Controller.text.toString());
      var dif = no1 - no2;
      result = 'The differnce is $dif';
    });
  }

  void multiply() {
    setState(() {
      var no1 = int.parse(no1Controller.text.toString());
      var no2 = int.parse(no2Controller.text.toString());
      var dif = no1 * no2;
      result = 'The Multiple is $dif';
    });
  }

  void divide() {
    setState(() {
      var no1 = int.parse(no1Controller.text.toString());
      var no2 = int.parse(no2Controller.text.toString());
      var dif = no1 / no2;
      result = 'The $no1 divide by $no2  is ${dif.toStringAsFixed(2)}';
    });
  }
}
