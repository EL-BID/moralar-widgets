part of moralar_widgets;

class AuthProvider extends AuthRemoteProvider {
  @override
  Future<AuthToken> authenticate(Credentials credentials) async {
    credentials as DocumentCredentials;
    late String endpoint;
    final body = {'password': credentials.password, 'typeProvider': 0};

    if (MoralarWidgets.instance.userType == UserType.resident) {
      endpoint = Urls.resident.token;
      body.addAll({'holderCpf': credentials.cpf});
    } else if (MoralarWidgets.instance.userType == UserType.tts) {
      endpoint = Urls.tts.token;
      body.addAll({'cpf': credentials.cpf});
      body.addAll({'typeUserProfile': 1});
    }

    try {
      final response = await post(endpoint, body: body);
      return AuthToken.fromResponse(response);
    } on MegaResponseException catch (e) {
      print(e.message);
      rethrow;
    }
  }

  @override
  Future<User> findUser(AuthToken token) async {
    final endpoint = MoralarWidgets.instance.userType == UserType.resident
        ? Urls.resident.token
        : Urls.tts.token;
    final response = await get(
      endpoint,
      headers: {'Authorization': 'Bearer ${token.accessToken.toString()}'},
    );
    return MoralarUser.fromJson(response.data)..token = token;
  }

  @override
  Future<AuthToken> reauthenticate(AuthToken token) async {
    final endpoint = MoralarWidgets.instance.userType == UserType.resident
        ? Urls.resident.token
        : Urls.tts.token;
    final response = await post(
      endpoint,
      body: {'refreshToken': token.refreshToken.toString()},
    );
    return AuthToken.fromResponse(response);
  }
}
