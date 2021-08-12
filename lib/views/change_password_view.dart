part of moralar_widgets;

class ChangePasswordView extends GetView<ChangePasswordController> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return MoralarScaffold(
      appBar: const MoralarAppBar(
        titleText: 'Alterar Senha',
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              Container(
                height: 180,
                width: 180,
                child: MoralarImage.asset(Assets.images.senha),
              ),
              const SizedBox(height: 24),
              Text(
                'Alterar Senha',
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
                label: 'Senha Atual',
                isPassword: true,
                color: MoralarColors.waterBlue,
                style: textTheme.bodyText1
                    ?.copyWith(color: MoralarColors.waterBlue, fontSize: 16),
              ),
              const SizedBox(height: 24),
              MoralarTextField(
                label: 'Nova senha',
                isPassword: true,
                color: MoralarColors.waterBlue,
                style: textTheme.bodyText1
                    ?.copyWith(color: MoralarColors.waterBlue, fontSize: 16),
              ),
              const SizedBox(height: 24),
              MoralarTextField(
                label: 'Confirmar nova senha',
                isPassword: true,
                color: MoralarColors.waterBlue,
                style: textTheme.bodyText1
                    ?.copyWith(color: MoralarColors.waterBlue, fontSize: 16),
              ),
              const SizedBox(height: 48),
              MoralarButton(
                onPressed: () {},
                child: Container(
                  alignment: Alignment.center,
                  child: Text('Salvar Alterações', style: textTheme.button),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
