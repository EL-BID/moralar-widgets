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
