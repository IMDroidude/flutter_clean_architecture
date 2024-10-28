import 'package:dartz/dartz.dart';
import 'package:flutter_clean_architecture/core/errors/failures.dart';
import 'package:flutter_clean_architecture/feature/auth/domain/repos/auth_repository.dart';

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