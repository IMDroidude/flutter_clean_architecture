import 'package:flutter/material.dart';

/// https://github.com/rim4j/furniture_app/blob/master/lib/config/app_styles.dart
class COLORS {
  static const Color bg = Color.fromARGB(255, 255, 255, 255);
  static const Color lightGrey = Color.fromARGB(255, 250, 250, 250);
  static const Color grey = Color.fromARGB(255, 159, 159, 159);
  static const Color dark = Color.fromARGB(255, 15, 15, 15);
  static const Color yellow = Color.fromARGB(255, 255, 211, 60);
}

class GradientColors {
  static const List<Color> backgroundProfile = [
    Color.fromARGB(255, 0, 0, 0),
    Color.fromARGB(0, 0, 0, 0)
  ];
}

final fInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(12),
  borderSide: const BorderSide(color: COLORS.lightGrey),
);
