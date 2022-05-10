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
  TextEditingController newPassword = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();

  Future<void> validateCPF() async {
    if (cpfFormKey.currentState!.validate()) {
      cpfFormKey.currentState!.save();
      debugPrint(cpf.text);
      if (MoralarWidgets.instance.userType == UserType.family) {
        pageController.jumpToPage(1);
      } else {
        try {
          isLoading.value = true;
          final response = await _passwordProvider.recoveryPassword(
            motherName.text,
            cityName.text,
            Formats.unmaskCpf(cpf.text),
            newPassword.text,
          );
          if (response) {
            Get.back();
            Get.snackbar(
              'Senha alterada com sucesso!',
              'Conferir em seu e-mail a sua nova senha.',
              colorText: MoralarColors.veryLightPink,
              backgroundColor: MoralarColors.strawberry,
              duration: const Duration(seconds: 5),
            );
            isLoading.value = false;
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
  }

  Future<void> recoveryPassword() async {
    if (passwordFormKey.currentState!.validate()) {
      passwordFormKey.currentState!.save();
      if(newPassword.text != "" && newPassword.text != confirmPassword.text){
        Get.snackbar(
          'Ops! Algo deu errado.',
          "As senhas precisam ser iguais!",
          colorText: MoralarColors.veryLightPink,
          backgroundColor: MoralarColors.strawberry,
        );
      }else {
        try {
          isLoading.value = true;
          final response = await _passwordProvider.recoveryPassword(
            motherName.text,
            cityName.text,
            Formats.unmaskCpf(cpf.text),
            newPassword.text,
          );
          if (response) {
            Get.back();
            if(newPassword.text != ""){
              Get.snackbar(
                'Sucesso!',
                'Senha alterada com sucesso!',
                colorText: MoralarColors.veryLightPink,
                backgroundColor: MoralarColors.strawberry,
                duration: const Duration(seconds: 5),
              );
            }else{
              Get.snackbar(
                'Senha alterada com sucesso!',
                'Conferir em seu e-mail a sua nova senha.',
                colorText: MoralarColors.veryLightPink,
                backgroundColor: MoralarColors.strawberry,
                duration: const Duration(seconds: 5),
              );
            }
            isLoading.value = false;
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
      }
      isLoading.value = false;
    }
  }

  Future<void> forgotPassword() async {
    try {
      isLoading.value = true;
      final response = await _passwordProvider.forgotPassword(
        Formats.unmaskCpf(cpf.text),
      );
      if (response) {
        Get.back();
        Get.snackbar(
          'Senha alterada com sucesso!',
          'Conferir em seu e-mail a sua nova senha.',
          colorText: MoralarColors.veryLightPink,
          backgroundColor: MoralarColors.strawberry,
          duration: const Duration(seconds: 5),
        );
        isLoading.value = false;
      }
    } on MegaResponseException catch (e) {
      if(e.message == "Familia sem e-mail cadastrado"){
        pageController.jumpToPage(1);
      }else {
        Get.snackbar(
          'Ops! Algo deu errado.',
          e.message!,
          colorText: MoralarColors.veryLightPink,
          backgroundColor: MoralarColors.strawberry,
        );
      }
      isLoading.value = false;
    }
    isLoading.value = false;
  }
}
