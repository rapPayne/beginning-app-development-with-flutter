import 'package:flutter/material.dart';

class ColorCircle extends StatelessWidget {
  final Color color;
  final double radius;
  const ColorCircle({super.key, required this.color, this.radius = 50});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: radius,
      height: radius,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
    );
  }
}
