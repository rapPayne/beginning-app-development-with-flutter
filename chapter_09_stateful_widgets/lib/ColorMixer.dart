import 'package:flutter/material.dart';
import 'ColorCircle.dart';
import 'ColorValueChanger.dart';

class ColorMixer extends StatefulWidget {
  ColorMixer({Key key}) : super(key: key);
  _ColorMixerState createState() => _ColorMixerState();
}

class _ColorMixerState extends State<ColorMixer> {
  int _redColor = 0;
  int _blueColor = 0;
  int _greenColor = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          ColorCircle(color: Color.fromRGBO(_redColor, _greenColor, _blueColor, 1), radius: 200,),
          ColorValueChanger(property: "Red", initialValue:_redColor, onChanged: _setColor),
          ColorValueChanger(property: "Green", initialValue:_greenColor, onChanged: _setColor),
          ColorValueChanger(property: "Blue", initialValue:_blueColor, onChanged: _setColor),
        ],
      ),
    );
  }

  void _setColor(String property, int value) {
    setState(() {
      _redColor = (property == "Red") ? value : _redColor;
      _greenColor = (property == "Green") ? value : _greenColor;
      _blueColor = (property == "Blue") ? value : _blueColor;
    });
  }
}