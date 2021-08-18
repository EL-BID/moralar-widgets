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
}
