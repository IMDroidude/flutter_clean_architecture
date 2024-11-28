
import 'package:flutter/widgets.dart';
import 'package:flutter_clean_architecture/di/domain_container.dart';

class AppConfig {

  // app init
  static Future<void> init() async {
    WidgetsFlutterBinding.ensureInitialized();
    ///await Firebase.initializeApp();
    initDomainDI();

  }

}