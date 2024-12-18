/// https://github.com/fbarsotti/risuscito/blob/61282024fa0210ee7407bbb3641d3c4f6af938b9/lib/core/utils/rs_utils.dart
///
// import 'dart:io';
// import 'dart:math';

// class RSUtils {
//   static int getRandomNumber() {
//     Random random = Random();
//     int randomNumber = random.nextInt(999999);
//     return randomNumber;
//   }

//   static Future<String> getDeviceData() async {
//     if (Platform.isAndroid) {
//       return _androidContent();
//     }

//     if (Platform.isIOS) {
//       final content = await _iOSContent();
//       return content;
//     }

//     return "Sistema operativo sconosciuto";
//   }

//   static String enumName(String enumToString) {
//     List<String> paths = enumToString.split(".");
//     return paths[paths.length - 1];
//   }

//   static Future<String> _iOSContent() async {
//     final IosDeviceInfo device = await DeviceUtils.iosDeviceInfo();
//     final packageInfo = await PackageInfo.fromPlatform();

//     return """Flavor: ${F.title}
// Build mode: ${enumName(DeviceUtils.currentBuildMode().toString())}
// Physical device?: ${device.isPhysicalDevice}
// Device: ${device.name}
// Model: ${device.model}
// System name: ${device.systemName}
// System version: ${device.systemVersion}
// App version:, ${packageInfo.version}
// Package name: ${packageInfo.packageName}""";
//   }

//   static Future<String> _androidContent() async {
//     final device = await DeviceUtils.androidDeviceInfo();
//     final packageInfo = await PackageInfo.fromPlatform();

//     return """Flavor: ${F.title}
// Build mode: ${enumName(DeviceUtils.currentBuildMode().toString())}
// Physical device?: ${device.isPhysicalDevice}
// Manufacturer: ${device.manufacturer}
// Model: ${device.model}
// Android version: ${device.version.release}
// Android SDK: ${device.version.sdkInt}
// App version:, ${packageInfo.version}
// Package name: ${packageInfo.packageName}""";
//   }

//   // Future<String> get _localPath async {
//   //   final directory = await getApplicationDocumentsDirectory();

//   //   return directory.path;
//   // }
// }

// enum Index {
//   alphabetical,
//   numerical,
//   biblical,
// }