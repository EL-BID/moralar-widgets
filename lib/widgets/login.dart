part of moralar_widgets;

class LoginView extends GetView<LoginController> {
  final bool isProfissional;
  const LoginView({required this.isProfissional});
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final _cpfFormKey = GlobalKey<FormState>();
    final _passwordFormKey = GlobalKey<FormState>();
    final pageController = PageController(
      initialPage: isProfissional ? 1 : 0,
    );

    _cpfLogin() {
      return DefaultScaffold(
        title: 'Login',
        leading: Container(),
        body: SingleChildScrollView(
          child: Form(
            key: _cpfFormKey,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                    hint: '123.123.123.-12',
                    formats: [Formats.cpfMaskFormatter],
                    keyboard: TextInputType.number,
                    validators: [
                      Validatorless.cpf('CPF Inválido'),
                      Validatorless.required('Preencha esse campo'),
                    ],
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
                    final checked = controller.checked.value;
                    return DefaultButton(
                      function: () {
                        if (checked) {
                          if (_cpfFormKey.currentState!.validate()) {
                            print('validado');
                            pageController.jumpToPage(1);
                          } else {
                            print('não validado');
                          }
                        } else {
                          print('Verifique os termos de uso');
                        }
                      },
                      child: Center(
                        child: Text(
                          'Continuar',
                          style: textTheme.button,
                        ),
                      ),
                    );
                  }),
                  const SizedBox(height: 16),
                  _pageController(true),
                ],
              ),
            ),
          ),
        ),
      );
    }

    _passwordLogin() {
      return DefaultScaffold(
        title: 'Login',
        leading: isProfissional
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
        body: SingleChildScrollView(
          child: Form(
            key: _passwordFormKey,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 128),
                  Container(
                    width: double.infinity,
                    height: 52,
                    child: MoralarImage.asset(Assets.images.appLogo),
                  ),
                  const SizedBox(height: 128),
                  Visibility(
                    visible: isProfissional,
                    child: MoralarTextField(
                      label: 'CPF',
                      hint: '123.123.123.-12',
                      formats: [Formats.cpfMaskFormatter],
                      keyboard: TextInputType.number,
                      validators: [
                        Validatorless.cpf('CPF Inválido'),
                        Validatorless.required('Preencha esse campo'),
                      ],
                    ),
                  ),
                  MoralarTextField(
                    label: 'Senha',
                    hint: 'Escreva uma senha',
                    keyboard: TextInputType.visiblePassword,
                    validators: [
                      Validatorless.min(
                          6, 'A senha precisa conter 6 caracteres'),
                      Validatorless.required('Preencha esse campo'),
                    ],
                    isPassword: true,
                  ),
                  const SizedBox(height: 128),
                  DefaultButton(
                    function: () {
                      if (_passwordFormKey.currentState!.validate()) {
                        print('validado');
                      } else {
                        print('não validado');
                      }
                    },
                    child: Center(
                      child: Text(
                        'Continuar',
                        style: textTheme.button,
                      ),
                    ),
                  ),
                  const SizedBox(height: 32),
                  OutButton(
                    color: Theme.of(context).focusColor,
                    // function: () => Get.toNamed(Routes.),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Center(
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
                  _pageController(false),
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

  Widget _pageController(bool isFirstPage) {
    return Visibility(
      visible: !isProfissional,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 8,
            width: 8,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: isFirstPage
                  ? Assets.colors.darkBlueGrey
                  : Assets.colors.brownGrey,
            ),
          ),
          const SizedBox(width: 16),
          Container(
            height: 8,
            width: 8,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: isFirstPage
                  ? Assets.colors.brownGrey
                  : Assets.colors.darkBlueGrey,
            ),
          ),
        ],
      ),
    );
  }
}
