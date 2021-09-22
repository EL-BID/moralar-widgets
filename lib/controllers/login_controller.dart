part of moralar_widgets;

class LoginController extends GetxController {
  final VoidCallback onSignedIn;
  final VoidCallback recoveryPassword;
  final String firstAccess;
  final String terms;

  LoginController({
    required this.onSignedIn,
    required this.recoveryPassword,
    required this.firstAccess,
    required this.terms,
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
        if (errorMessage.value == 'Já existe um login em outro dispositivo') {
          Get.defaultDialog(
            onWillPop: () async {
              return true;
            },
            title: 'Já existe um login em outro dispositivo.',
            titleStyle: Get.textTheme.headline1,
            titlePadding: const EdgeInsets.only(top: 24),
            contentPadding: const EdgeInsets.all(24),
            middleText: 'Você deseja entrar com esse celular?',
            middleTextStyle: Get.textTheme.bodyText2,
            textConfirm: "Confirmar",
            textCancel: "Cancelar",
            cancelTextColor: MoralarColors.strawberry,
            confirmTextColor: MoralarColors.veryLightPink,
            backgroundColor: MoralarColors.veryLightPink,
            buttonColor: MoralarColors.strawberry,
            onConfirm: () async {
              credentials.useNewDevice = true;
              Get.back();
              await signIn();
              return;
            },
          );
        } else {
          Get.snackbar(
            'Algo deu errado',
            errorMessage.value,
            colorText: MoralarColors.veryLightPink,
            backgroundColor: MoralarColors.strawberry,
          );
        }
      }
      if (MegaFlutter.instance.auth.currentUser != null) {
        isLoading.value = false;
        onSignedIn();
      }
    }
  }
}
