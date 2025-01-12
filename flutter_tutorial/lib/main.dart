import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_tutorial/currency_converter_cupertino_page.dart';
import 'package:flutter_tutorial/currency_converter_material_page.dart';

void main() {
  runApp(const MyCupertinoApp());
}

// type of widget
// 1. statelessWidget  -> state Immutable
// 2. StateFullWidget  ->  mutable

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CurrencyConverterMaterialPage(),
    );
  }
}

class MyCupertinoApp extends StatelessWidget {
  const MyCupertinoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      home: CurrencyConverterCupertinoPage(),
    );
  }
}
