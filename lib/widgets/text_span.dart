part of moralar_widgets;

class BoldNormal extends StatelessWidget {
  final String title;
  final String body;
  const BoldNormal({required this.title, required this.body});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return RichText(
      text: TextSpan(
        text: '$title: ',
        style: textTheme.headline4,
        children: <TextSpan>[
          TextSpan(
            text: body,
            style: textTheme.headline4?.copyWith(
              fontWeight: FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}

class TermsUse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Flexible(
      child: RichText(
        text: TextSpan(
          text: 'Concordo com os ',
          style: textTheme.headline4?.copyWith(
            fontWeight: FontWeight.normal,
          ),
          children: <TextSpan>[
            TextSpan(
              text: 'Termos de Uso ',
              style: textTheme.headline4,
            ),
            TextSpan(
                text: 'e ',
                style: textTheme.headline4?.copyWith(
                  fontWeight: FontWeight.normal,
                )),
            TextSpan(
              text: 'Políticas de Privacidade ',
              style: textTheme.headline4,
            ),
            TextSpan(
                text: 'e atesto ter ',
                style: textTheme.headline4?.copyWith(
                  fontWeight: FontWeight.normal,
                )),
            TextSpan(
              text: 'mais de 18 anos de idade.',
              style: textTheme.headline4,
            ),
          ],
        ),
      ),
    );
  }
}
