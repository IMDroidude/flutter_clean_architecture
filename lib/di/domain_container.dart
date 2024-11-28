


import 'package:flutter_clean_architecture/di/injection_container.dart';
import 'package:flutter_clean_architecture/feature/auth/data/repos/auth_repo_impl.dart';
import 'package:flutter_clean_architecture/feature/auth/domain/repos/auth_repository.dart';

/// https://github.com/RifkiCS29/headline_news/blob/065a628e64c16fc671ce2ce15d47c977bc58ddd4/lib/injection.dart
/// https://github.com/guilherme-v/flutter-clean-architecture-example/blob/main/lib/layers/presentation/using_get_it/injector.dart
Future<void> initDomainDI() async {

  // LOGIN REPOSITORY
  sl.registerLazySingleton<AuthRepository>(
    () => AuthRepoImpl(),
  );
  
  ///sl.registerFactory()

  //providers
  // sl.registerLazySingleton(() =>
  //     AuthProvider());
  // sl.registerLazySingleton(() =>
  //     TimerProvider());



}