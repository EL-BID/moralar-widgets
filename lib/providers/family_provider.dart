part of moralar_widgets;

class FamilyProvider extends RemoteProvider {
  bool? _isFirstAccess;

  bool get isFirstAccess => _isFirstAccess!;

  Future<bool> isValidCpf(String holderCpf) async {
    try {
      final response = await post(
        Urls.family.validateHolderCpf,
        queryParameters: {'cpf': holderCpf},
      );
      _isFirstAccess = response.data['isFirstAcess'];
      return true;
    } on MegaResponseException catch (e) {
      if (e.statusCode == 400) {
        return false;
      } else {
        rethrow;
      }
    }
  }
}
