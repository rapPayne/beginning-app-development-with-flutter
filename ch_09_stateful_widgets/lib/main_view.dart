import 'package:flutter/material.dart';
import 'color_mixer.dart';
import 'favorite_color.dart';

class MainView extends StatelessWidget {
  final String title;
  const MainView({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ColorMixer(),
          FavoriteColors(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.check),
      ),
    );
  }
}
