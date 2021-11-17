part of moralar_widgets;

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    _cpfLogin() {
      return MoralarScaffold(
        appBar: MoralarAppBar(
          titleText: 'Login',
          leading: Container(),
        ),
        body: SingleChildScrollView(
          child: Form(
            key: controller.cpfFormKey,
            child: Container(
              height: MediaQuery.of(context).size.height,
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    height: 52,
                    child: MoralarImage.asset(Assets.images.appLogo),
                  ),
                  MoralarTextField(
                    controller: controller.cpf,
                    label: 'CPF',
                    formats: [Formats.cpfMaskFormatter],
                    keyboard: const TextInputType.numberWithOptions(
                      signed: true,
                    ),
                    validators: [
                      Validatorless.cpf('CPF Inválido'),
                      Validatorless.required('Preencha com seu CPF'),
                    ],
                  ),
                  Column(
                    children: [
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
                            TermsUse(
                              function: () => Get.toNamed(controller.terms),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 32),
                      Obx(() {
                        return MoralarButton(
                          isLoading: controller.isLoading.value,
                          onPressed: () async => await controller.validateCPF(),
                          child: Container(
                            alignment: Alignment.center,
                            child: Text(
                              'Continuar',
                              style: textTheme.button,
                            ),
                          ),
                        );
                      }),
                    ],
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
                    controller.pageController.jumpToPage(0);
                  },
                ),
        ),
        body: SingleChildScrollView(
          child: Form(
            key: controller.passwordFormKey,
            child: Container(
              height: MediaQuery.of(context).size.height,
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: double.infinity,
                    height: 52,
                    child: MoralarImage.asset(Assets.images.appLogo),
                  ),
                  Column(
                    children: [
                      Visibility(
                        visible: MoralarWidgets.instance.userType == UserType.tts,
                        child: MoralarTextField(
                          controller: controller.cpf,
                          label: 'CPF',
                          hint: '123.123.123-12',
                          formats: [Formats.cpfMaskFormatter],
                          keyboard: const TextInputType.numberWithOptions(
                            signed: true,
                          ),
                          validators: [
                            Validatorless.cpf('CPF Inválido'),
                            Validatorless.required('Preencha esse campo'),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      MoralarTextField(
                        controller: controller.password,
                        label: 'Senha',
                        hint: 'Escreva uma senha',
                        keyboard: TextInputType.visiblePassword,
                        validators: [
                          Validatorless.min(
                            6,
                            'A senha precisa conter 6 caracteres',
                          ),
                          Validatorless.required('Digite sua senha'),
                        ],
                        isPassword: true,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Obx(() {
                        return MoralarButton(
                          onPressed: () async => controller.signIn(),
                          isLoading: controller.isLoading.value,
                          child: Container(
                            alignment: Alignment.center,
                            child: Text(
                              'Continuar',
                              style: textTheme.button,
                            ),
                          ),
                        );
                      }),
                      const SizedBox(height: 20),
                      MoralarOutlinedButton(
                        function: controller.recoveryPassword,
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
                    ],
                  ),
                  const SizedBox(height: 32),
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
      controller: controller.pageController,
      children: [
        _cpfLogin(),
        _passwordLogin(),
      ],
    );
  }
}
