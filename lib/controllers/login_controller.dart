part of moralar_widgets;

class LoginController extends GetxController {
  final checked = false.obs;
  final isFirstAccess = false.obs;
  final credentials = DocumentCredentials();
  final errorMessage = ''.obs;
  final hasError = false.obs;
  final _familyProvider = Get.find<FamilyProvider>();

  Future<void> signIn() async {
    if (MoralarWidgets.instance.userType == UserType.family) {
      if (await _familyProvider.isValidCpf(credentials.cpf)) {
        isFirstAccess.value = _familyProvider.isFirstAccess;
      } else {
        hasError.value = true;
        errorMessage.value = 'CPF não cadastrado';
      }
    }
    if (!hasError.value) {
      await MegaFlutter.instance.auth.signIn(credentials);
    }
  }
}
