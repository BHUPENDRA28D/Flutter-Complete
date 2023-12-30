import 'package:currency_converter/pages/styles.dart';
import 'package:flutter/material.dart';

// 1. Create a variable that stores the converted currency value
// 2. Create a function that multiplies the value given by the textfield
// 3. Store the value in the variable that we created
// 4. dlSPLAY the variable

class CurrencyConverterMaterialHomePage extends StatefulWidget {
  const CurrencyConverterMaterialHomePage({super.key});

  @override
  State<CurrencyConverterMaterialHomePage> createState() =>
      _CurrencyConverterMaterialHomePageState();
}

class _CurrencyConverterMaterialHomePageState
    extends State<CurrencyConverterMaterialHomePage> {
  double result = 0.0;
  final TextEditingController textEditingController = TextEditingController();

  void convert() {
    result = double.parse(textEditingController.text) * 83.25;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Currency Converter",
              style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.teal[800],
          elevation: 10.0,
          centerTitle: true,
          // Actions are present on right side of appbar
          actions: [
            IconButton(
                icon: const Icon(
                  Icons.more_vert,
                  color: Colors.white,
                ),
                tooltip: 'Show Snackbar',
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('This is a snackbar')));
                }),
          ],

          //leading are on left
          leading: IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
              onPressed: () {
                //Insert the actions you want to perform when the back button is pressed
                Navigator.pop(context);
              }),
        ),
        backgroundColor: Colors.teal[800],
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                    'INR ${result != 0 ? result.toStringAsFixed(3) : result.toStringAsFixed(0)}',
                    style: dispalyStyle),

                // giving SizedBox.
                const SizedBox(
                  height: 10.0,
                ),

                // Making of text feild.
                TextField(
                  controller: textEditingController,
                  style: const TextStyle(
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    hintText: 'Please enter the amount in USD',
                    // label: const Text('Amount (USD)'),
                    hintStyle: const TextStyle(
                      color: Colors.black,
                    ),
                    prefixIcon: const Icon(Icons.monetization_on_rounded),
                    // suffixIcon: const Icon(Icons.monetization_on_outlined),
                    prefixIconColor: Colors.black,
                    //filled here means is our textfeild is fully filled/cover or not.
                    filled: true,
                    fillColor: Colors.white,
                    focusedBorder: border,
                    enabledBorder: border,

                    contentPadding: const EdgeInsets.all(5),
                  ),
                  // keyboardType: TextInputType.phone,
                  keyboardType: const TextInputType.numberWithOptions(
                      decimal: true, signed: true),
                ),
                const SizedBox(
                  height: 20,
                ),
                // Creating a conver button
                /*  TextButton(
                   // style: BottonSt
                   onPressed: () {
                     debugPrint('covert done');
                  },

                 style: const ButtonStyle(
                   backgroundColor: MaterialStatePropertyAll(Colors.orange),
                   foregroundColor: MaterialStatePropertyAll(Colors.white),
                      textStyle: MaterialStatePropertyAll(
                          TextStyle(color: Colors.white))

                     minimumSize:
                         MaterialStatePropertyAll(Size(double.infinity, 50)),
                  ),
                   child: const Text(
                   "CONVERT",
                     style: TextStyle(fontWeight: FontWeight.bold),
                   ),
                )*/

                ElevatedButton(
                  onPressed: () {
                    convert();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                    minimumSize: const Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  child: const Text('Convert'),
                ),
              ],
            ),
          ),
        ));
  }
}
