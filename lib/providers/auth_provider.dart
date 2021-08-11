part of moralar_widgets;

class AuthProvider implements AuthRemoteProvider {
  @override
  Future<AuthToken> authenticate(Credentials credentials) async {
    credentials as DocumentCredentials;
    dynamic response =
        await MegaFlutter.instance.httpClient.post(Urls.profile.login, data: {
      'cpf': credentials.cpf,
      'password': credentials.password,
      'typeProvider': 0,
      'typeUserProfile': 1,
    });
    response = MegaResponse.fromJson(response.data);
    return AuthToken(
      accessToken: Jwt(response.data['access_token']),
      refreshToken: Jwt(response.data['refresh_token']),
    );
  }

  @override
  Future<User> findUser(AuthToken token) async {
    final response =
        await MegaFlutter.instance.httpClient.get(Urls.profile.getInfo);

    return User.fromJson(response.data)..token = token;
  }

  @override
  Future<AuthToken> reauthenticate(AuthToken token) async {
    dynamic response =
        await MegaFlutter.instance.httpClient.post(Urls.profile.login, data: {
      'refreshToken': token.refreshToken.toString(),
    });
    response = MegaResponse.fromJson(response.data);
    return AuthToken(
      accessToken: response.data['access_token'],
      refreshToken: response.data['refresh_token'],
    );
  }
}
