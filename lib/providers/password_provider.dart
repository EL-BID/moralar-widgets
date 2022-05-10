part of moralar_widgets;

class PasswordProvider extends RemoteProvider {
  bool? _isFirstAccess;

  bool get isFirstAccess => _isFirstAccess!;

  Future<bool> recoveryPassword(String name, String city, String cpf, String password) async {
    final String endpoint = MoralarWidgets.instance.userType == UserType.tts
        ? Urls.tts.forgotPassword
        : Urls.family.forgotPassword;
    try {
      final response = await post(
        endpoint,
        body: MoralarWidgets.instance.userType != UserType.tts
            ? {
                'motherName': name,
                'motherCityBorned': city,
                'cpf': cpf,
                'password': password,
              }
            : {
                'cpf': cpf,
              },
      );
      debugPrint('${response.toJson()}');
      return true;
    } on MegaResponseException {
      rethrow;
    }
  }

  Future<bool> forgotPassword(String cpf) async {
    final String endpoint = MoralarWidgets.instance.userType == UserType.tts
        ? Urls.tts.forgotPassword
        : Urls.family.forgotPassword;
    try {
      final response = await post(
        endpoint,
        body: {
                'cpf': cpf,
              },
      );
      debugPrint('${response.toJson()}');
      return true;
    } on MegaResponseException {
      rethrow;
    }
  }

  Future<bool> changePassword(
      String newPassword, String currentPassword) async {
    final String endpoint = MoralarWidgets.instance.userType == UserType.tts
        ? Urls.tts.changePassword
        : Urls.family.changePassword;
    try {
      final response = await post(
        endpoint,
        body: {
          'currentPassword': newPassword,
          'newPassword': currentPassword,
        },
      );
      debugPrint('${response.toJson()}');
      return true;
    } on MegaResponseException {
      rethrow;
    }
  }
}
