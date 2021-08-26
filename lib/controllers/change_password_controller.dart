part of moralar_widgets;

class ChangePasswordController extends GetxController {
  final _passwordProvider = Get.find<PasswordProvider>();
  final isLoading = false.obs;

  final formKey = GlobalKey<FormState>();
  TextEditingController currentPassword = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();
  TextEditingController newPassword = TextEditingController();

  Future<void> changePassword() async {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
      try {
        isLoading.value = true;
        if (newPassword.text == confirmPassword.text) {
          final response = await _passwordProvider.changePassword(
            currentPassword.text,
            newPassword.text,
          );
          if (response) {
            Get.back();
            Get.back();
            Get.snackbar(
              'Senha alterada com sucesso!',
              '',
              colorText: MoralarColors.veryLightPink,
              backgroundColor: MoralarColors.kellyGreen,
              duration: const Duration(seconds: 5),
            );
            isLoading.value = false;
          }
        } else {
          Get.snackbar(
            'Ops! Algo deu errado.',
            'Nova senha e sua confirmação não coincidem.',
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
    }
    isLoading.value = false;
  }

  // @override
  // void onInit() {
  //   super.onInit();
  // }

  // @override
  // void onReady() {
  //   super.onReady();
  // }

  @override
  void onClose() {}
}
