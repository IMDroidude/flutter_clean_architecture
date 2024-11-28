import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_clean_architecture/config/app_config.dart';
import 'package:flutter_clean_architecture/app/myapp.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';

//push coce at https://github.com/IMDroidude/flutter_clean_architecture.git
// void main() {
//   runApp(const MyApp());
// }

/// https://github.com/himanshu077/news-flutter/blob/7c3f32f38512091e55bfd3c66e093aec810e7c81/lib/main.dart

// void main() async {
//   await AppConfig.init();
//   runApp(const MyApp());

//   SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
//     // systemNavigationBarColor: COLORS.grey,
//     // statusBarColor: COLORS.grey,
//     systemNavigationBarColor: Colors.transparent,
//     statusBarColor: Colors.transparent,
//     statusBarIconBrightness: Brightness.dark,
//   ));
// }

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  /// https://github.com/wednesday-solutions/flutter_template/tree/41ccdc52b8004bef01469a31f0086cf5ce19c417/lib/flavors
  ///const String appFlavor = String.fromEnvironment('APP_FLAVOR', defaultValue: 'dev');
  ///setFlavor(appFlavor);
  await AppConfig.init();
  ///await dotenv.load(fileName: ".env");
  ///runApp(MovieApp());
  ///runApp(const MyApp());

runApp(EasyLocalization(
    ///supportedLocales: [ENGLISH_LOCAL, ARABIC_LOCAL],
    supportedLocales: const [
        Locale('en'),
        Locale('fr'),
      ],
      fallbackLocale: const Locale('en'),
      saveLocale: true,
      useOnlyLangCode: true,
    ///path: ASSETS_PATH_LOCALISATIONS,
    path: 'assets/translations',
    child: Phoenix(child: const MyApp()),
  ));

  SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    // systemNavigationBarColor: COLORS.grey,
    // statusBarColor: COLORS.grey,
    systemNavigationBarColor: Colors.transparent,
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
  ));
}