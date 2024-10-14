
abstract class AuthRepository {
  Future<bool> login({
    required String username,
    required String password,
  });
  Future<bool> forgotPassword({
    required String username,
  });
  Future<bool> verifyForgotPassword({
    required String token,
    required String password,
    required String email,
  });

  // refresh token

  // logout
  Future<void> logout();

}
