import 'package:flutter/material.dart';

class ColorValueChanger extends StatefulWidget {
  final String property;
  final Function onChanged;
  final int value;
  ColorValueChanger(
      {Key key,
      this.property = "property",
      this.value = 0,
      this.onChanged})
      : super(key: key);

  _ColorValueChangerState createState() => new _ColorValueChangerState(
      property: property, value: value, onChanged: onChanged);
}

class _ColorValueChangerState extends State<ColorValueChanger> {
  final String property;
  final Function onChanged;
  final int value;
  int _value;
  _ColorValueChangerState(
      {Key key, this.property = "property", this.value, this.onChanged})
      : super() {
    this._value = value;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Text(property, style: Theme.of(context).textTheme.subtitle),
          Slider(
            min: 0,
            max: 255,
            value: _value.toDouble(),
            label: property,
            onChanged: _onChanged,
          )
        ],
      ),
    );
  }

  _onChanged(double value) {
    setState(() {
      this._value = value.round();
    });
    onChanged(property, value.round());
  }
}
