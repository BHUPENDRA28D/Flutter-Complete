import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

const TextStyle dispalyStyle =
    TextStyle(fontSize: 55, color: Colors.white, fontWeight: FontWeight.bold);

final border = OutlineInputBorder(
  borderSide: const BorderSide(
    // color: Colors.black,
    width: 2.0,
    style: BorderStyle.none,
    // strokeAlign: BorderSide.strokeAlignInside,
  ),
  borderRadius: BorderRadius.circular(20),
);
//There is a uderlineInput border also which make border on last edge.