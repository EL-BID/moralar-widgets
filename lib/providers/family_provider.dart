part of moralar_widgets;

class FamilyProvider extends RemoteProvider {
  Future<bool> isFirstAccess(String holderCpf) async {
    final response = await post(
      Urls.family.validateHolderCpf,
      queryParameters: {'cpf': holderCpf},
    );
    return response.data['isFirstAcess'];
  }

  Future<bool> isValidCpf(String holderCpf) async {
    try {
      await post(
        Urls.family.validateHolderCpf,
        queryParameters: {'cpf': holderCpf},
      );
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
