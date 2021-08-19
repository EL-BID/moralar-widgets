part of moralar_widgets;

class AuthProvider extends AuthRemoteProvider {
  @override
  Future<AuthToken> authenticate(Credentials credentials) async {
    credentials as DocumentCredentials;
    late String endpoint;
    late dynamic body;

    if (credentials.birthday != 0) {
      body = {
        'holderCpf': credentials.cpf,
        'holderBirthday': credentials.birthday,
      };
      endpoint = Urls.family.tokenByBirthday;
    } else {
      body = {'password': credentials.password, 'typeProvider': 0};
      if (MoralarWidgets.instance.userType == UserType.family) {
        endpoint = Urls.family.token;
        body.addAll({'holderCpf': credentials.cpf});
      } else if (MoralarWidgets.instance.userType == UserType.tts) {
        endpoint = Urls.tts.token;
        body.addAll({'cpf': credentials.cpf});
        body.addAll({'typeUserProfile': 1});
      }
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
    final endpoint = MoralarWidgets.instance.userType == UserType.family
        ? Urls.family.getInfo
        : Urls.tts.getInfo;
    final response = await get(
      endpoint,
      headers: {'Authorization': 'Bearer ${token.accessToken.toString()}'},
    );

    if (MoralarWidgets.instance.userType == UserType.family) {
      final user = FamilyHolder.fromJson(response.data['holder'])
        ..token = token;
      user.isFirstAcess = response.data['isFirstAcess'];
      return user;
    } else {
      return TTS.fromJson(response.data)..token = token;
    }
  }

  @override
  Future<AuthToken> reauthenticate(AuthToken token) async {
    final endpoint = MoralarWidgets.instance.userType == UserType.family
        ? Urls.family.token
        : Urls.tts.token;
    final response = await post(
      endpoint,
      body: {'refreshToken': token.refreshToken.toString()},
    );
    return AuthToken.fromResponse(response);
  }
}
