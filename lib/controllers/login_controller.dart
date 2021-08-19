part of moralar_widgets;

class LoginController extends GetxController {
  final VoidCallback onSignedIn;
  final VoidCallback recoveryPassword;
  final String firstAccess;

  LoginController({
    required this.onSignedIn,
    required this.recoveryPassword,
    required this.firstAccess,
  });

  final isLoading = false.obs;
  final checked = false.obs;
  final isFirstAccess = false.obs;
  final credentials = DocumentCredentials();
  TextEditingController password = TextEditingController();
  TextEditingController cpf = TextEditingController();
  final errorMessage = ''.obs;
  final hasError = false.obs;
  final _familyProvider = Get.find<FamilyProvider>();
  final cpfFormKey = GlobalKey<FormState>();
  final passwordFormKey = GlobalKey<FormState>();
  final pageController = PageController(
    initialPage: MoralarWidgets.instance.userType == UserType.tts ? 1 : 0,
  );

  Future<void> validateCPF() async {
    if (checked.value) {
      if (cpfFormKey.currentState!.validate()) {
        cpfFormKey.currentState!.save();
        credentials.cpf = Formats.unmaskCpf(cpf.text);
        isLoading.value = true;
        if (await _familyProvider.isValidCpf(credentials.cpf)) {
          isFirstAccess.value = _familyProvider.isFirstAccess;
          isLoading.value = false;
          if (isFirstAccess.value) {
            Get.toNamed(firstAccess, arguments: credentials.cpf);
          } else {
            pageController.jumpToPage(1);
          }
        } else {
          isLoading.value = false;
          errorMessage.value = 'CPF não cadastrado';
          Get.snackbar(
            'Algo deu errado!',
            errorMessage.value,
            colorText: MoralarColors.veryLightPink,
            backgroundColor: MoralarColors.strawberry,
          );
        }
      }
    } else {
      Get.snackbar(
        'Leia os termos de uso',
        'Para avançar, confirme se está de acordo.',
        colorText: MoralarColors.veryLightPink,
        backgroundColor: MoralarColors.strawberry,
      );
    }
  }

  Future<void> signIn() async {
    if (passwordFormKey.currentState!.validate()) {
      passwordFormKey.currentState!.save();
      credentials.cpf = Formats.unmaskCpf(cpf.text);
      credentials.password = password.text;
      try {
        isLoading.value = true;
        await MegaFlutter.instance.auth.signIn(credentials);
      } on MegaResponseException catch (e) {
        hasError.value = true;
        errorMessage.value = e.message!;
        isLoading.value = false;
      }
      if (hasError.value) {
        Get.snackbar(
          'Algo deu errado',
          errorMessage.value,
          colorText: MoralarColors.veryLightPink,
          backgroundColor: MoralarColors.strawberry,
        );
      }
      if (MegaFlutter.instance.auth.currentUser != null) {
        onSignedIn();
      }
    }
  }
}
