class AuthRepoImpl extends AuthRepository with ExceptionMixin {
  final AuthRemoteDataSource loginSignupRemoteDataSource;
  final NetworkInfo networkInfo;

  AuthRepoImpl({
    required this.loginSignupRemoteDataSource,
    required this.networkInfo,
  });

  @override
  Future<bool> login({
    required String username,
    required String password,
  }) async =>
      handleException(() async => await loginSignupRemoteDataSource.login(
            username: username,
            password: password,
          ));

  @override
  Future<bool> forgotPassword({
    required String username,
  }) async =>
      handleException(() async =>
          await loginSignupRemoteDataSource.forgotPassword(username: username));

  @override
  Future<bool> verifyForgotPassword({
    required String token,
    required String password,
    required String email,
  }) async =>
      handleException(
          () async => await loginSignupRemoteDataSource.verifyForgotPassword(
                token: token,
                password: password,
                email: email,
              ));

  @override
  Future<void> logout() async =>
      handleException(() async => await loginSignupRemoteDataSource.logout());

}
