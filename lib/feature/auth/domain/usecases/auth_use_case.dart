import 'package:dartz/dartz.dart';
import 'package:flutter_clean_architecture/core/errors/failures.dart';
import 'package:flutter_clean_architecture/feature/auth/domain/repos/auth_repository.dart';

/// https://github.com/himanshu077/news-flutter/tree/7c3f32f38512091e55bfd3c66e093aec810e7c81/lib/feature
class AuthUseCase {
  final AuthRepository authRepository;

  AuthUseCase({required this.authRepository});

  // Future<DataState<UserEntity>> loginUserCase(
  //     String email, String password) async {
  //   return authRepository.login(email, password);
  // }

  Future<Either<String,Failure>> loginUseCase(
    String msisdn, String pin
  ) async {
    throw UnimplementedError();
  }
  
}