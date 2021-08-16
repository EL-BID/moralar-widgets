part of moralar_widgets;

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    _cpfLogin() {
      return MoralarScaffold(
        appBar: const MoralarAppBar(
          titleText: 'Login',
        ),
        body: SingleChildScrollView(
          child: Form(
            key: controller.cpfFormKey,
            child: Container(
              height: MediaQuery.of(context).size.height - 100,
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisSize: MainAxisSize.min,
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
                          return MoralarButton(
                            isLoading: controller.isLoading.value,
                            onPressed: () async =>
                                await controller.validateCPF(),
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
                    controller.pageController.jumpToPage(0);
                  },
                ),
        ),
        body: SingleChildScrollView(
          child: Form(
            key: controller.passwordFormKey,
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
                            Validatorless.required('Digite sua senha'),
                          ],
                          isPassword: true,
                          onSaved: (password) {
                            controller.credentials.password = password!;
                          },
                        ),
                        const SizedBox(height: 128),
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
                        const SizedBox(height: 32),
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
      controller: controller.pageController,
      children: [
        // _teste(),
        _cpfLogin(),
        _passwordLogin(),
      ],
    );
  }

  String _unmaskCpf(String cpf) =>
      cpf.trim().replaceAll('.', '').replaceAll('-', '');
}
