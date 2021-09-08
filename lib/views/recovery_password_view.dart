part of moralar_widgets;

class RecoveryPasswordView extends GetView<RecoveryPasswordController> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    Widget _cpfRecovery() {
      return SingleChildScrollView(
        child: Form(
          key: controller.cpfFormKey,
          child: Container(
            height: MediaQuery.of(context).size.height - 80,
            alignment: Alignment.center,
            padding: const EdgeInsets.all(24),
            child: Column(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        height: 180,
                        width: 180,
                        child: MoralarImage.asset(Assets.images.senha),
                      ),
                      const SizedBox(height: 64),
                      Text(
                        'Recuperar Senha',
                        style: textTheme.headline2?.copyWith(
                          fontSize: 24,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(24),
                        child: Text(
                          // ignore: lines_longer_than_80_chars
                          'Lorem ipsum dolor sit amet, consectetur  adi sed do eiusmod tempor  incididunt ut labore etdolore magna aliqua.  Ut enim ad minim',
                          style: textTheme.bodyText1,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(height: 32),
                      MoralarTextField(
                        controller: controller.cpf,
                        label: 'CPF',
                        formats: [Formats.cpfMaskFormatter],
                        validators: [
                          Validatorless.cpf('CPF Inválido'),
                          Validatorless.required('Preencha com seu CPF'),
                        ],
                        keyboard: TextInputType.number,
                        color: MoralarColors.waterBlue,
                        hintStyle: textTheme.bodyText1?.copyWith(
                            color: MoralarColors.waterBlue, fontSize: 16),
                        labelStyle: textTheme.bodyText1?.copyWith(
                            color: MoralarColors.waterBlue, fontSize: 16),
                      ),
                      const SizedBox(height: 80),
                      Obx(() {
                        return MoralarButton(
                          isLoading: controller.isLoading.value,
                          onPressed: () {
                            controller.validateCPF();
                          },
                          child: Container(
                            alignment: Alignment.center,
                            child: Text('Salvar', style: textTheme.button),
                          ),
                        );
                      }),
                    ],
                  ),
                ),
                const MoralarPageController(isFirstPage: true),
              ],
            ),
          ),
        ),
      );
    }

    Widget _confirmInfo() {
      return SingleChildScrollView(
        child: Form(
          key: controller.passwordFormKey,
          child: Container(
            height: MediaQuery.of(context).size.height - 80,
            alignment: Alignment.center,
            padding: const EdgeInsets.all(24),
            child: Column(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        height: 180,
                        width: 180,
                        child: MoralarImage.asset(Assets.images.senha),
                      ),
                      const SizedBox(height: 24),
                      Text(
                        'Confirmar Informações',
                        style: textTheme.headline2?.copyWith(
                          fontSize: 24,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(24),
                        child: Text(
                          // ignore: lines_longer_than_80_chars
                          'Lorem ipsum dolor sit amet, consectetur  adi sed do eiusmod tempor  incididunt ut labore etdolore magna aliqua.  Ut enim ad minim',
                          style: textTheme.bodyText1,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      MoralarTextField(
                        controller: controller.motherName,
                        label: 'Primeiro nome da sua mãe',
                        validators: [
                          Validatorless.required(
                              'Preencha com o nome da sua mãe'),
                        ],
                        color: MoralarColors.waterBlue,
                        labelStyle: textTheme.bodyText1?.copyWith(
                            color: MoralarColors.waterBlue, fontSize: 16),
                      ),
                      const SizedBox(height: 24),
                      MoralarTextField(
                        controller: controller.cityName,
                        label: 'Cidade onde sua mãe nasceu',
                        validators: [
                          Validatorless.required(
                              'Preencha com o nome de onde sua mãe'),
                        ],
                        color: MoralarColors.waterBlue,
                        labelStyle: textTheme.bodyText1?.copyWith(
                            color: MoralarColors.waterBlue, fontSize: 16),
                      ),
                      const SizedBox(height: 64),
                      Obx(() {
                        return MoralarButton(
                          onPressed: () {
                            controller.recoveryPassword();
                          },
                          isLoading: controller.isLoading.value,
                          child: Container(
                            alignment: Alignment.center,
                            child: Text('Salvar', style: textTheme.button),
                          ),
                        );
                      }),
                    ],
                  ),
                ),
                const MoralarPageController(isFirstPage: false),
              ],
            ),
          ),
        ),
      );
    }

    return MoralarScaffold(
      appBar: MoralarAppBar(
        titleText: 'Recuperar senha',
        leading: IconButton(
          icon: const Icon(
            FontAwesomeIcons.angleLeft,
            color: Colors.black,
          ),
          onPressed: () {
            if (controller.pageController.page == 0) {
              Get.back();
            } else {
              controller.pageController
                  .jumpToPage(controller.pageController.page!.toInt() - 1);
            }
          },
        ),
      ),
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: controller.pageController,
        children: [
          _cpfRecovery(),
          _confirmInfo(),
        ],
      ),
    );
  }
}
