import 'package:flutter/material.dart';
import 'color_circle.dart';

class FavoriteColors extends StatelessWidget {
  const FavoriteColors({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Container(
        padding: const EdgeInsets.only(left: 10),
        alignment: Alignment.centerLeft,
        child: Text("Your favorite colors",
            style: Theme.of(context).textTheme.headlineMedium),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: ButtonTheme(
          child: const ButtonBar(
              alignment: MainAxisAlignment.start,
              children: <Widget>[
                ColorCircle(color: Colors.red),
                ColorCircle(color: Colors.teal),
                ColorCircle(color: Colors.deepPurple),
                ColorCircle(color: Color(0xffFF7F00)),
              ]),
        ),
      ),
    ]);
  }
}
