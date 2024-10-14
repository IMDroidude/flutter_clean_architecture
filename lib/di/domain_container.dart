


import 'package:flutter_clean_architecture/di/injection_container.dart';
import 'package:flutter_clean_architecture/feature/auth/domain/repos/auth_repository.dart';

Future<void> initDomainDI() async {

  // LOGIN REPOSITORY
  sl.registerLazySingleton<AuthRepository>(
    () => AuthRepoImpl(loginSignupRemoteDataSource: sl(), networkInfo: sl()),
  );

  //providers
  sl.registerLazySingleton(() =>
      AuthProvider());
  sl.registerLazySingleton(() =>
      TimerProvider());



}