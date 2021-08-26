part of moralar_widgets;

AlertDialog subscribeAlert(TextTheme textTheme) {
  return AlertDialog(
    buttonPadding: const EdgeInsets.all(24),
    contentPadding: const EdgeInsets.symmetric(horizontal: 32),
    title: Column(
      children: [
        Container(
          height: 120,
          width: 120,
          padding: const EdgeInsets.only(bottom: 24),
          child: MoralarImage.asset(
            Assets.images.confirmado,
          ),
        ),
        Text(
          'Inscrição Confirmada',
          style: textTheme.headline1?.copyWith(
            color: MoralarColors.kellyGreen,
          ),
        ),
        const SizedBox(height: 16),
      ],
    ),
    content: Text(
      // ignore: lines_longer_than_80_chars
      'Lorem ipsum dolor sit amet, consectetur adipiscing  elit, sed do eiusmod tempor  incididunt ut labore et  dolore magna.',
      style: textTheme.bodyText2?.copyWith(fontSize: 16),
      textAlign: TextAlign.center,
    ),
    actions: [
      MoralarButton(
        onPressed: () {
          Get.back();
          Get.back();
        },
        child: Container(
          alignment: Alignment.center,
          child: Text('Voltar', style: textTheme.button),
        ),
      ),
    ],
  );
}

class ConfirmSubscription extends StatelessWidget {
  final String description;
  const ConfirmSubscription({required this.description});
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
      children: [
        Container(
          height: 120,
          width: 120,
          padding: const EdgeInsets.only(bottom: 24),
          child: MoralarImage.asset(
            Assets.images.confirmado,
          ),
        ),
        Text(
          'Inscrição Confirmada',
          style: textTheme.headline1?.copyWith(
            color: MoralarColors.kellyGreen,
          ),
        ),
        const SizedBox(height: 16),
        Container(
          alignment: Alignment.center,
          child: Text(
            description,
            textAlign: TextAlign.center,
            style: textTheme.bodyText2,
          ),
        ),
      ],
    );
  }
}
