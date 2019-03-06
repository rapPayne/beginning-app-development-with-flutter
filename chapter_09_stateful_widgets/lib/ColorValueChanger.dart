import 'package:flutter/material.dart';

class ColorValueChanger extends StatefulWidget {
  final String property;
  final Function onChanged;
  final int initialValue;
  ColorValueChanger(
      {Key key,
      this.property = "property",
      this.initialValue = 0,
      this.onChanged})
      : super(key: key);

  _ColorValueChangerState createState() => new _ColorValueChangerState(
      property: property, initialValue: initialValue, onChanged: onChanged);
}

class _ColorValueChangerState extends State<ColorValueChanger> {
  final String property;
  final Function onChanged;
  final int initialValue;
  int value;
  _ColorValueChangerState(
      {Key key, this.property = "property", this.initialValue, this.onChanged})
      : super() {
    value = initialValue;
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
            value: value.toDouble(),
            label: property,
            onChanged: _onChanged,
          )
        ],
      ),
    );
  }

  _onChanged(double value) {
    setState(() {
      this.value = value.round();
    });
    onChanged(property, value.round());
  }
}
