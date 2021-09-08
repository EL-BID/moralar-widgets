part of moralar_widgets;

class QuizService {
  static String statusName(int status) {
    if (status == 1) {
      return 'Respondido';
    } else if (status == 0) {
      return 'Não respondido';
    } else {
      return '';
    }
  }

  static Color statusColor(int status) {
    if (status == 1) {
      return MoralarColors.kellyGreen;
    } else if (status == 0) {
      return MoralarColors.strawberry;
    } else {
      return Colors.white;
    }
  }
}

class QuizHeader extends StatelessWidget {
  final int quizLength;
  final int number;
  final String nameQuestion;

  const QuizHeader({
    required this.quizLength,
    required this.number,
    required this.nameQuestion,
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
          nameQuestion,
          style: textTheme.headline6,
        ),
        const SizedBox(height: 32),
      ],
    );
  }
}

class OpenQuestion extends StatelessWidget {
  final TextEditingController controller;
  final Function(String?)? onChanged;
  final bool readOnly;
  const OpenQuestion({
    required this.controller,
    this.onChanged,
    this.readOnly = false,
  });
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
      alignment: Alignment.center,
      child: MoralarTextField(
        controller: controller,
        color: MoralarColors.waterBlue,
        maxLines: 3,
        label: 'Responda a questão acima',
        labelStyle: textTheme.headline6,
        onChanged: onChanged,
        readOnly: readOnly,
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
  final Color? activeColor;

  const CloseQuestion({
    required this.questionIndex,
    required this.answers,
    this.onChanged,
    this.activeColor,
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
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: answers.length,
            itemBuilder: (context, index) {
              return RadioListTile(
                value: index,
                groupValue: questionIndex,
                onChanged: onChanged!,
                activeColor: activeColor,
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

class MultiplyQuestion extends StatelessWidget {
  final List<bool> questionValue;
  final List<String> answers;
  final Function(int?) onChanged;
  final Color? activeColor;

  const MultiplyQuestion({
    required this.questionValue,
    required this.answers,
    required this.onChanged,
    this.activeColor,
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
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: answers.length,
            itemBuilder: (context, index) {
              return CheckboxListTile(
                value: questionValue[index],
                onChanged: (s) {
                  onChanged(index);
                },
                activeColor: activeColor,
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
