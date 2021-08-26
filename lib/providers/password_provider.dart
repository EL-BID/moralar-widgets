part of moralar_widgets;

class PasswordProvider extends RemoteProvider {
  bool? _isFirstAccess;

  bool get isFirstAccess => _isFirstAccess!;

  Future<bool> recoveryPassword(String name, String city, String cpf) async {
    try {
      final response = await post(
        Urls.family.forgotPassword,
        body: {
          'motherName': name,
          'motherCityBorned': city,
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
        ? ''
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
