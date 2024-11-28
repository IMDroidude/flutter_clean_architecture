
/// https://github.com/RealEskalate/Internship-2023/blob/fd61993c591199f0facd9eabe21bd47867772d7b/Mobile/starter_project_dartsmiths/lib/core/network/network_info.dart
import 'package:internet_connection_checker/internet_connection_checker.dart';

abstract class NetworkInfo {
  Future<bool> get isConnected;
}

class NetworkInfoImpl implements NetworkInfo {
  final InternetConnectionChecker connectionChecker;

  NetworkInfoImpl(this.connectionChecker);

  @override
  Future<bool> get isConnected => connectionChecker.hasConnection;
}