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
      return MoralarColors.kellyGreen;
    } else if (status == 1) {
      return MoralarColors.strawberry;
    } else {
      return Colors.white;
    }
  }
}

class QuizHeader extends StatelessWidget {
  final int quizLength;
  final int number;
  final bool onlyAnswer;

  const QuizHeader({
    required this.quizLength,
    required this.number,
    this.onlyAnswer = false,
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
                    ? MoralarColors.waterBlue
                    : MoralarColors.brownGrey,
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
          'TEXTONTEXTONTEXTONT EXTOTEXTONTEXTON TEXTONTEXTOTEXT ONTETONTEXTOTEX'
          'TONT EXTONTEXTON TEXTOTEXTONTEXTONTEXTONTEXTOTEXTONTEXTONTEXTONTE'
          'XTO',
          style: textTheme.headline6,
        ),
        Visibility(
          visible: onlyAnswer,
          child: Column(
            children: [
              const SizedBox(height: 32),
              Text(
                '* Escolha apenas uma alternativa',
                style: textTheme.headline6?.copyWith(
                  color: MoralarColors.brownishGrey,
                  fontSize: 18,
                ),
              )
            ],
          ),
        ),
        const SizedBox(height: 64),
      ],
    );
  }
}

class OpenQuestion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
      alignment: Alignment.center,
      child: MoralarTextField(
        color: MoralarColors.waterBlue,
        style: textTheme.bodyText1,
        maxLines: 10,
      ),
    );
  }
}

class ListQuestion extends StatelessWidget {
  final int index;
  final List<String> answers;
  final Function(String?)? onChanged;

  const ListQuestion({
    required this.index,
    required this.answers,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return DropdownButton<String>(
      value: answers[index],
      icon: const Icon(FontAwesomeIcons.angleDown),
      elevation: 16,
      style: textTheme.bodyText1,
      underline: Container(
        height: 2,
        color: MoralarColors.waterBlue,
      ),
      isExpanded: true,
      onChanged: onChanged!,
      items: answers.map<DropdownMenuItem<String>>((value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}

class CloseQuestion extends StatelessWidget {
  final int questionIndex;
  final List<String> answers;
  final Function(int?)? onChanged;

  const CloseQuestion({
    required this.questionIndex,
    required this.answers,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
      children: [
        GridView.builder(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 2,
              crossAxisSpacing: 20,
            ),
            shrinkWrap: true,
            itemCount: answers.length,
            itemBuilder: (context, index) {
              return RadioListTile(
                value: index,
                groupValue: questionIndex,
                onChanged: onChanged!,
                contentPadding: EdgeInsets.zero,
                title: Text(
                  answers[index],
                  style: textTheme.bodyText2,
                ),
              );
            }),
      ],
    );
  }
}
