import 'package:flutter/cupertino.dart';

class CurrencyConveterCupertinoPage extends StatefulWidget {
  const CurrencyConveterCupertinoPage({super.key});

  @override
  State<CurrencyConveterCupertinoPage> createState() =>
      _CurrencyConveterCupertinoPageState();
}

class _CurrencyConveterCupertinoPageState
    extends State<CurrencyConveterCupertinoPage> {
  double result = 0.0;
  final TextEditingController textEditingController = TextEditingController();

  void convert() {
    result = double.parse(textEditingController.text) * 83.25;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: const Text(
            "Currency Converter",
            style: TextStyle(color: CupertinoColors.white),
          ),
          backgroundColor: CupertinoColors.black,
          leading: CupertinoButton(
            padding: const EdgeInsets.all(0),
            child: const Icon(
              CupertinoIcons.back,
              color: CupertinoColors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          trailing: CupertinoButton(
            padding: const EdgeInsets.all(0),
            child: const Icon(
              CupertinoIcons.ellipsis,
              color: CupertinoColors.white,
            ),
            onPressed: () {
              showCupertinoDialog(
                context: context,
                builder: (context) => CupertinoAlertDialog(
                  title: const Text("Show Snackbar"),
                  content: const Text("This is a snackbar"),
                  actions: [
                    CupertinoDialogAction(
                      child: const Text("OK"),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              );
            },
          ),
        ),
        backgroundColor: CupertinoColors.black,

        // Start of Cupertinobody.
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                    'INR ${result != 0 ? result.toStringAsFixed(3) : result.toStringAsFixed(0)}'),

                // giving SizedBox.
                const SizedBox(
                  height: 10.0,
                ),

                // Making of text feild.
                CupertinoTextField(
                  controller: textEditingController,
                  style: const TextStyle(
                    color: CupertinoColors.black,
                  ),
                  placeholder: 'Please Enter Amount in USd',
                  prefix: const Icon(CupertinoIcons.money_dollar),
                  decoration: BoxDecoration(
                      color: CupertinoColors.white,
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(5)),

                  // keyboardType: TextInputType.phone,
                  keyboardType: const TextInputType.numberWithOptions(
                      decimal: true, signed: true),
                ),
                const SizedBox(
                  height: 20,
                ),

                CupertinoButton(
                  onPressed: () {
                    convert();
                  },
                  color: CupertinoColors.activeOrange,
                  child: const Text('Convert'),
                ),
              ],
            ),
          ),
        ));
  }
}
