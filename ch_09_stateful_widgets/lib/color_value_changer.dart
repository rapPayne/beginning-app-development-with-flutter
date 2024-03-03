import 'package:flutter/material.dart';

class ColorValueChanger extends StatefulWidget {
  final String property;
  final Function changeColorValue;
  final int value;
  // Value passed in from its host
  const ColorValueChanger(
      {Key? key,
      this.property = "property",
      this.value = 0,
      required this.changeColorValue})
      : super(key: key);

  @override
  State<ColorValueChanger> createState() => _ColorValueChangerState();
}

class _ColorValueChangerState extends State<ColorValueChanger> {
  int _value = 0;
  @override
  Widget build(BuildContext context) {
    _value = widget.value;
    return Column(
      children: <Widget>[
        Text(widget.property, style: Theme.of(context).textTheme.titleMedium),
        Slider(
          min: 0,
          max: 255,
          value: _value.toDouble(),
          label: widget.property,
          onChanged: _onChanged,
        )
      ],
    );
  }

  _onChanged(double value) {
    setState(() => _value = value.round());
    widget.changeColorValue(widget.property, value.round());
  }
}
