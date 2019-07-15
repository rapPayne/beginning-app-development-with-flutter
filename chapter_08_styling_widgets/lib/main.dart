import 'package:flutter/material.dart';
import '01-UnstyledVSStyled.dart';
import '02-CustomFonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Styling Text',
      theme: ThemeData(primarySwatch: Colors.blue),
      // home: HelloWorld(),
      home: CustomFonts(),
    );
  }
}
