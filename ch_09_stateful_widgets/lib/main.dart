import 'package:flutter/material.dart';
import 'main_view.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  final String title = "Color Mixer";

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: MainView(title: title),
    );
  }
}
