part of moralar_widgets;

class AuthProvider implements AuthRemoteProvider {
  @override
  Future<AuthToken> authenticate(Credentials credentials) async {
    credentials as DocumentCredentials;
    final body = {
      'cpf': credentials.cpf,
      'password': credentials.password,
      'typeProvider': 0,
    };
    if (credentials.userType == UserType.tts) {
      body.addAll({'typeUserProfile': 1});
    }
    final response = await MegaFlutter.instance.httpClient.post(
      Urls.profile.token,
      data: body,
    );
    final model = MegaResponse.fromJson(response.data);
    return AuthToken(
      accessToken: Jwt(model.data['access_token']),
      refreshToken: Jwt(model.data['refresh_token']),
    );
  }

  @override
  Future<User> findUser(AuthToken token) async {
    final response = await MegaFlutter.instance.httpClient.get(
      Urls.profile.getInfo,
      options: Options(
        headers: {
          'Authorization': 'Bearer ${token.accessToken.toString()}',
        },
      ),
    );
    final model = MegaResponse.fromJson(response.data);
    return User.fromJson(model.data)..token = token;
  }

  @override
  Future<AuthToken> reauthenticate(AuthToken token) async {
    final response = await MegaFlutter.instance.httpClient.post(
      Urls.profile.token,
      data: {
        'refreshToken': token.refreshToken.toString(),
      },
    );
    final model = MegaResponse.fromJson(response.data);
    return AuthToken(
      accessToken: model.data['access_token'],
      refreshToken: model.data['refresh_token'],
    );
  }
}
