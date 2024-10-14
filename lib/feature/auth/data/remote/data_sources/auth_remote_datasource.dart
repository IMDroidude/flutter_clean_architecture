abstract class AuthRemoteDataSource {
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



  // logout
  Future<void> logout();
}

class AuthRemoteDataSourceImpl extends AuthRemoteDataSource {
  final NetworkClient networkClient;

  AuthRemoteDataSourceImpl({required this.networkClient});


  @override
  Future<bool> login({
    required String username,
    required String password,
  }) async {
    final preferences = sl<PreferencesUtil>();
    Utils.debug(
        "Enter For Auth  ${preferences.getPreferencesData(Constants.kUserTokenKey).toString()}");
    // if not empty means already login
    try {
      final response = await networkClient.invoke(
        kToken,
        RequestType.post,
        headers: NetworkClient.authHeader,
        requestBody: {
          'grant_type': Constants.grantTypePassword,
          'username': username,
          'password': password,
          'client_id': Constants.clientID,
          'scope': Constants.scope
        },
      );

      Utils.debug("Login /.... ");
      Utils.debug(response);

      if (response.statusCode != 200) {
        throw Exception(
          response.data?['error_description'] ?? response.data?['error'],
        );
      }

      preferences.setPreferencesData(
        Constants.kUserTokenKey,
        response.data['access_token'],
      );
      preferences.setPreferencesData(
        Constants.kUserRefreshTokenKey,
        response.data['refresh_token'],
      );
      return true;
    } on DioException catch (error) {
      throw Exception(
        error.response?.data?['error_description'] ??
            error.response?.data?['error'],
      );
    } catch (_) {
      rethrow;
    }
  }


  @override
  Future<bool> forgotPassword({
    required String username,
  }) async {
    try {
      final response = await networkClient.invoke(
        kForgotPassword,
        RequestType.post,
        requestBody: {
          'username': username,
        },
      );

      Utils.debug("forgotPassword /.... ");
      Utils.debug(response);

      if (response.statusCode != 200) {
        throw Exception(
          response.data['error_description'] ?? response.data['error'],
        );
      }
      return true;
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<bool> verifyForgotPassword({
    required String token,
    required String password,
    required String email,
  }) async {
    // if not empty means already login
    final encodedToken = Uri.encodeComponent(token);
    try {
      final response = await networkClient.invoke(
        kVerifyForgotPassword,
        RequestType.post,
        requestBody: {
          'token': encodedToken,
          'email': email,
          'password': password,
        },
      );

      Utils.debug("verifyForgotPassword /.... ");
      Utils.debug(response);

      if (response.statusCode != 200) {
        throw Exception(
          response.data['error_description'] ?? response.data['error'],
        );
      }
      return true;
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<void> logout() async {
    try {
      //
      final resp = await networkClient.invoke(
        kLogoutRevocation,
        RequestType.post,
        headers: NetworkClient.authHeader,
        requestBody: {
          'client_id': Constants.clientID,
          'token_type_hint': Constants.grantTypeRefreshToken,
          'token': sl<PreferencesUtil>()
              .getPreferencesData(Constants.kUserRefreshTokenKey)
        },
      );
      Utils.debug(resp.statusCode);
      if (resp.statusCode != 200) {
        throw Exception(
          resp.data['error_description'] ?? resp.data['error'],
        );
      }
    } catch (_) {
      rethrow;
    }
  }
}