part of moralar_widgets;

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final _formKey = GlobalKey<FormState>();

    return DefaultScaffold(
      title: 'Login',
      leading: Container(),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
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
                      LoginCheckBox(),
                      const SizedBox(width: 16),
                      TermsUse(),
                    ],
                  ),
                ),
                const SizedBox(height: 32),
                DefaultButton(
                  function: () {
                    if (_formKey.currentState!.validate()) {
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
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
