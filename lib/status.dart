part of moralar_widgets;

class StatusResettlement extends StatelessWidget {
  final int status;
  final List<String> titles;
  final List<String>? descriptions;

  StatusResettlement(
      {required this.status, required this.titles, this.descriptions});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Column(
      children: checkboxList(textTheme),
    );
  }

  List<Widget> checkboxList(TextTheme textTheme) {
    final length = titles.length;
    final list = <Widget>[];
    for (var i = 1; i <= length; i++) {
      list.add(
        checkboxResettlement(
            i <= status, i + 1 <= 1, i == length, i - 1, textTheme),
      );
    }
    return list;
  }

  Widget checkboxResettlement(
    bool isChecked,
    bool isNextChecked,
    bool isFinal,
    int index,
    TextTheme textTheme,
  ) {
    final kellyGreen = Color(0xFF06b12e);
    final brownGrey = Color(0xFFb2b2b2);
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 30,
              width: 30,
              decoration: isChecked
                  ? BoxDecoration(
                      color: kellyGreen,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    )
                  : BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        width: 2,
                        color: brownGrey,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
              child: Visibility(
                visible: isChecked,
                child: Center(
                  child: FaIcon(FontAwesomeIcons.check,
                      color: Colors.white, size: 18),
                ),
              ),
            ),
            SizedBox(height: 8),
            Visibility(
              visible: !isFinal,
              child: Container(
                height: 25,
                width: 2,
                color: isNextChecked ? kellyGreen : brownGrey,
              ),
            ),
            SizedBox(height: 8),
          ],
        ),
        SizedBox(width: 20),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                titles[index],
                style: isChecked
                    ? textTheme.headline1?.copyWith(color: kellyGreen)
                    : textTheme.headline1?.copyWith(color: brownGrey),
              ),
              Text(descriptions?[index] ?? ''),
            ],
          ),
        )
      ],
    );
  }
}
