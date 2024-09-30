import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/config/app_config.dart';
import 'package:flutter_clean_architecture/app/myapp.dart';

//push coce at https://github.com/IMDroidude/flutter_clean_architecture.git
// void main() {
//   runApp(const MyApp());
// }

void main() async {
  await AppConfig.init();
  runApp(const MyApp());
}