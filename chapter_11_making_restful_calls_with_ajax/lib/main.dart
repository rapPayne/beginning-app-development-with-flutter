import 'package:flutter/material.dart';
import 'simple_get.dart';
import 'simple_futurebuilder.dart';

void main() {
  runApp(Main());
}

class Main extends StatefulWidget {
  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chapter 10 Ajax',

          home: SimpleFutureBuilder(),
      theme: ThemeData(
        primarySwatch: Colors.lime,
      ),
    );
  }
}
