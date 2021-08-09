part of moralar_widgets;

class Quiz {
  static String statusName(int status) {
    if (status == 0) {
      return 'Respondido';
    } else if (status == 1) {
      return 'Não respondido';
    } else {
      return '';
    }
  }

  static Color statusColor(int status) {
    if (status == 0) {
      return Assets.colors.kellyGreen;
    } else if (status == 1) {
      return Assets.colors.strawberry;
    } else {
      return Colors.white;
    }
  }
}

class QuizHeader extends StatelessWidget {
  final int quizLength;
  final int number;

  const QuizHeader({
    required this.quizLength,
    required this.number,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: List.generate(
            quizLength,
            (index) => Expanded(
              child: Container(
                height: 4,
                color: index < number
                    ? Assets.colors.waterBlue
                    : Assets.colors.brownGrey,
              ),
            ),
          ),
        ),
        const SizedBox(height: 16),
        Container(
          alignment: Alignment.center,
          child: Text(
            '$number de $quizLength',
            style: textTheme.bodyText1,
          ),
        ),
        const SizedBox(height: 64),
        Text(
          'TEXTONTEXTONTEXTONT EXTOTEXTONTEXTON TEXTONTEXTOTEXT ONTETONTEXTOTEXTONT EXTONTEXTON TEXTOTEXTONTEXTONTEXTONTEXTOTEXTONTEXTONTEXTONTEXTO',
          style: textTheme.headline6,
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
