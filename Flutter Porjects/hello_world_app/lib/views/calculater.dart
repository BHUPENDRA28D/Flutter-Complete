import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CalculatorView extends StatefulWidget {
  const CalculatorView({super.key});

  @override
  State<CalculatorView> createState() => _CalculatorViewState();
}

class _CalculatorViewState extends State<CalculatorView> {
  int x = 0, y = 0, z = 0;

  final display1Controller = TextEditingController();
  final display2Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(32.0),
      child: Column(
        children: [
          //Calculator Display
          CalculaorDisplay(
              hint: "Enter first number :: ", contorller: display1Controller),
          const SizedBox(
            height: 30,
          ),
          CalculaorDisplay(
              hint: "Enter second number :: ", contorller: display2Controller),

          Text(
            "z",
            style: TextStyle(
              fontSize: 60,
              fontWeight: FontWeight.bold,
            ),
          ),

          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //Calculator Buttons
              FloatingActionButton(
                onPressed: () {},
                child: const Icon(CupertinoIcons.minus),
              ),

              FloatingActionButton(
                onPressed: () {},
                child: const Icon(CupertinoIcons.minus),
              ),

              FloatingActionButton(
                onPressed: () {},
                child: const Icon(CupertinoIcons.multiply),
              ),

              FloatingActionButton(
                onPressed: () {},
                child: const Icon(CupertinoIcons.divide),
              ),
            ],
          ),
          //Buttons
        ],
      ),
    );
  }
}

class CalculaorDisplay extends StatelessWidget {
  const CalculaorDisplay({
    super.key,
    this.hint = "Enter a number",
    required this.controller,
  });

  final String? hint;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: TextInputType.number,
      autofocus: true,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
              width: 3.0,
            ),
            borderRadius: BorderRadius.circular(10)),
        border: OutlineInputBorder(
            borderSide: BorderSide(
          color: Colors.black,
        )),
        hintText: hint,
        hintStyle: TextStyle(color: Colors.black),
      ),
    );
  }
}
