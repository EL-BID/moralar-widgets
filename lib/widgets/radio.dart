part of moralar_widgets;

class YesOrNotRadio extends StatelessWidget {
  final dynamic value;
  final Function(dynamic)? function;
  const YesOrNotRadio({required this.value, this.function});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Row(
      children: [
        Radio(
          activeColor: Assets.colors.veryLightPink,
          value: 0,
          groupValue: value,
          onChanged: function,
        ),
        Text(
          'Sim',
          style: textTheme.headline5,
        ),
        Radio(
          activeColor: Assets.colors.veryLightPink,
          value: 1,
          groupValue: value,
          onChanged: function,
        ),
        Text(
          'Não',
          style: textTheme.headline5,
        ),
      ],
    );
  }
}
