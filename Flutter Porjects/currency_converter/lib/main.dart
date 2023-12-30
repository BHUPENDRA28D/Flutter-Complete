import 'package:currency_converter/pages/currenc_converter_cupertino.dart';
import 'package:currency_converter/pages/currenc_converter_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(const MyApp());
  // runApp(const MyCupertinoApp());
}

// Types of Widgets
/* 1.StatelessWigets:-
    - StatelessWidget is a widget that has no mutable state, meaning it doesn't
     have any data that can change during the lifetime of the widget
    - A widget that does not require mutable state.
    - It is used when the widget's appearance does not depend on any data and behaviors,
      such as an icon or a text label.

   2.StatefullWigets:-
     - StatefulWidget is a widget with mutable state, which means its properties can be changed over time.
     - StatefulWidget is a widget that requires mutable state, meaning its properties
   
   3. InheriterdWigets:-
   - The inherited widget is a type of widget that provides some value to all its descendants in the tree.  
    - InheritedWidget is a widget that allows you to pass values down from a parent widget to all of its descendants in the tree.
    - Inherit from another class to reuse code.
   */

// State -
//key-widget build method

//--Two types of Degsin system----
//  1.Material Degsin -
//  2.CupertinoDegsin -

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CurrencyConverterMaterialHomePage(),
    );
  }
}

class MyCupertinoApp extends StatelessWidget {
  const MyCupertinoApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
        debugShowCheckedModeBanner: false,
        home: CurrencyConveterCupertinoPage());
  }
}
