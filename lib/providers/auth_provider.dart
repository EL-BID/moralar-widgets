part of moralar_widgets;

class AuthProvider extends AuthRemoteProvider {
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
    try {
      final response = await post(Urls.profile.token, body: body);
      return AuthToken.fromResponse(response);
    } on MegaResponseException catch (e) {
      print(e.message);
      rethrow;
    }
  }

  @override
  Future<User> findUser(AuthToken token) async {
    final response = await get(
      Urls.profile.getInfo,
      headers: {
        'Authorization': 'Bearer ${token.accessToken.toString()}',
      },
    );
    return MoralarUser.fromJson(response.data)..token = token;
  }

  @override
  Future<AuthToken> reauthenticate(AuthToken token) async {
    final response = await post(
      Urls.profile.token,
      body: {
        'refreshToken': token.refreshToken.toString(),
      },
    );
    return AuthToken.fromResponse(response);
  }
}
