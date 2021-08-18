part of moralar_widgets;

class RecoveryPasswordController extends GetxController {
  final isLoading = false.obs;

  final pageController = PageController();
  final cpfFormKey = GlobalKey<FormState>();
  final passwordFormKey = GlobalKey<FormState>();

  final _passwordProvider = Get.find<PasswordProvider>();
  TextEditingController motherName = TextEditingController();
  TextEditingController cityName = TextEditingController();
  TextEditingController cpf = TextEditingController();

  Future<void> validateCPF() async {
    if (MoralarWidgets.instance.userType == UserType.family) {
      if (cpfFormKey.currentState!.validate()) {
        cpfFormKey.currentState!.save();
        debugPrint(cpf.text);
        pageController.jumpToPage(1);
      }
    }
  }

  Future<void> recoveryPassword() async {
    if (passwordFormKey.currentState!.validate()) {
      passwordFormKey.currentState!.save();
      try {
        isLoading.value = true;
        debugPrint(
            '${MegaFlutter.instance.auth.currentUser!.token.accessToken}');
        final response = await _passwordProvider.recoveryPassword(
          motherName.text,
          cityName.text,
          Formats.unmaskCpf(cpf.text),
        );
        if (response) {
          Get.snackbar(
            'Senha alterada com sucesso!',
            'Conferir em seu e-mail a sua nova senha.',
            colorText: MoralarColors.veryLightPink,
            backgroundColor: MoralarColors.strawberry,
          );
        }
      } on MegaResponseException catch (e) {
        Get.snackbar(
          'Ops! Algo deu errado.',
          e.message!,
          colorText: MoralarColors.veryLightPink,
          backgroundColor: MoralarColors.strawberry,
        );
        isLoading.value = false;
      }
      isLoading.value = false;
    }
  }

  @override
  void onClose() {}
}
