
import 'package:flutter/material.dart';

class ThemeManager {

static final ThemeManager _instance = ThemeManager._internal();

  factory ThemeManager() {
    return _instance;
  }

  ThemeManager._internal();

  static final ThemeData themeData = ThemeData(
   brightness: Brightness.light,
  );
}