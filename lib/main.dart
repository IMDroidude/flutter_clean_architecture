import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_clean_architecture/config/app_config.dart';
import 'package:flutter_clean_architecture/app/myapp.dart';

//push coce at https://github.com/IMDroidude/flutter_clean_architecture.git
// void main() {
//   runApp(const MyApp());
// }

/// https://github.com/himanshu077/news-flutter/blob/7c3f32f38512091e55bfd3c66e093aec810e7c81/lib/main.dart

void main() async {
  await AppConfig.init();
  runApp(const MyApp());

  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    // systemNavigationBarColor: COLORS.grey,
    // statusBarColor: COLORS.grey,
    systemNavigationBarColor: Colors.transparent,
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
  ));
}