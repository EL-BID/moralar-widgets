part of moralar_widgets;

class LoginView extends GetView<LoginController> {
  final VoidCallback onSignedIn;
  final VoidCallback recoveryPassword;

  const LoginView({
    required this.onSignedIn,
    required this.recoveryPassword,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final _cpfFormKey = GlobalKey<FormState>();
    final _passwordFormKey = GlobalKey<FormState>();
    final pageController = PageController(
      initialPage: MoralarWidgets.instance.userType == UserType.tts ? 1 : 0,
    );

    _cpfLogin() {
      return MoralarScaffold(
        appBar: const MoralarAppBar(
          titleText: 'Login',
        ),
        body: SingleChildScrollView(
          child: Form(
            key: _cpfFormKey,
            child: Container(
              height: MediaQuery.of(context).size.height - 100,
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        const SizedBox(height: 128),
                        Container(
                          width: double.infinity,
                          height: 52,
                          child: MoralarImage.asset(Assets.images.appLogo),
                        ),
                        const SizedBox(height: 128),
                        MoralarTextField(
                          label: 'CPF',
                          controller: TextEditingController(),
                          formats: [Formats.cpfMaskFormatter],
                          keyboard: TextInputType.number,
                          validators: [
                            Validatorless.cpf('CPF Inválido'),
                            Validatorless.required('Preencha com seu CPF'),
                          ],
                          onSaved: (input) =>
                              controller.credentials.cpf = _unmaskCpf(input!),
                        ),
                        const SizedBox(height: 128),
                        // MoralarTextField(
                        //   label: '',
                        // ),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Obx(
                                () => LoginCheckBox(
                                  checked: controller.checked.value,
                                  function: () => controller.checked.value =
                                      !controller.checked.value,
                                ),
                              ),
                              const SizedBox(width: 16),
                              TermsUse(),
                            ],
                          ),
                        ),
                        const SizedBox(height: 32),
                        Obx(() {
                          final checked = controller.checked.value;
                          return MoralarButton(
                            onPressed: () async {
                              if (checked) {
                                if (_cpfFormKey.currentState!.validate()) {
                                  _cpfFormKey.currentState!.save();
                                  // pageController.jumpToPage(1);
                                  controller.signIn();
                                }
                              } else {
                                // Get.snackbar(
                                //   'Leia os termos de uso',
                                //   'Para avançar, confirme se está de acordo.',
                                //   colorText: MoralarColors.veryLightPink,
                                //   backgroundColor: MoralarColors.strawberry,
                                // );
                                await controller.signIn();
                                if (controller.hasError.value) {
                                  Get.snackbar(
                                    'Falha!',
                                    controller.errorMessage.value,
                                    colorText: MoralarColors.veryLightPink,
                                    backgroundColor: MoralarColors.strawberry,
                                  );
                                }
                              }
                            },
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                'Continuar',
                                style: textTheme.button,
                              ),
                            ),
                          );
                        }),
                        const SizedBox(height: 16),
                      ],
                    ),
                  ),
                  const MoralarPageController(isFirstPage: true),
                ],
              ),
            ),
          ),
        ),
      );
    }

    _passwordLogin() {
      return MoralarScaffold(
        appBar: MoralarAppBar(
          titleText: 'Login',
          leading: MoralarWidgets.instance.userType == UserType.tts
              ? Container()
              : IconButton(
                  icon: const Icon(
                    FontAwesomeIcons.angleLeft,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    pageController.jumpToPage(0);
                  },
                ),
        ),
        body: SingleChildScrollView(
          child: Form(
            key: _passwordFormKey,
            child: Container(
              height: MediaQuery.of(context).size.height - 100,
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        const SizedBox(height: 128),
                        Container(
                          width: double.infinity,
                          height: 52,
                          child: MoralarImage.asset(Assets.images.appLogo),
                        ),
                        const SizedBox(height: 128),
                        Visibility(
                          visible:
                              MoralarWidgets.instance.userType == UserType.tts,
                          child: MoralarTextField(
                            label: 'CPF',
                            hint: '123.123.123-12',
                            formats: [Formats.cpfMaskFormatter],
                            keyboard: TextInputType.number,
                            validators: [
                              Validatorless.cpf('CPF Inválido'),
                              Validatorless.required('Preencha esse campo'),
                            ],
                            onSaved: (cpf) =>
                                controller.credentials.cpf = _unmaskCpf(cpf!),
                          ),
                        ),
                        MoralarTextField(
                          label: 'Senha',
                          hint: 'Escreva uma senha',
                          keyboard: TextInputType.visiblePassword,
                          validators: [
                            Validatorless.min(
                              6,
                              'A senha precisa conter 6 caracteres',
                            ),
                            Validatorless.required('Preencha esse campo'),
                          ],
                          isPassword: true,
                          onSaved: (password) {
                            controller.credentials.password = password!;
                          },
                        ),
                        const SizedBox(height: 128),
                        MoralarButton(
                          onPressed: () async {
                            if (_passwordFormKey.currentState!.validate()) {
                              _passwordFormKey.currentState!.save();
                              await controller.signIn();
                              if (controller.hasError.value) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content:
                                        Text(controller.errorMessage.value),
                                    backgroundColor: Colors.red,
                                  ),
                                );
                              }
                              if (MegaFlutter.instance.auth.currentUser !=
                                  null) {
                                onSignedIn();
                              }
                            }
                          },
                          child: Container(
                            alignment: Alignment.center,
                            child: Text(
                              'Continuar',
                              style: textTheme.button,
                            ),
                          ),
                        ),
                        const SizedBox(height: 32),
                        MoralarOutlinedButton(
                          function: recoveryPassword,
                          color: Theme.of(context).focusColor,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Container(
                                  alignment: Alignment.center,
                                  child: Text(
                                    'Não lembra a senha? Recuperar.',
                                    style: textTheme.button?.copyWith(
                                      color: Theme.of(context).focusColor,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ),
                              ),
                              Icon(
                                FontAwesomeIcons.angleRight,
                                color: Theme.of(context).focusColor,
                              )
                            ],
                          ),
                        ),
                        const SizedBox(height: 16),
                      ],
                    ),
                  ),
                  const MoralarPageController(isFirstPage: false),
                ],
              ),
            ),
          ),
        ),
      );
    }

    return PageView(
      physics: const NeverScrollableScrollPhysics(),
      controller: pageController,
      children: [
        _cpfLogin(),
        _passwordLogin(),
      ],
    );
  }

  String _unmaskCpf(String cpf) =>
      cpf.trim().replaceAll('.', '').replaceAll('-', '');
}
