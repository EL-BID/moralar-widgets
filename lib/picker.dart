part of moralar_widgets;

class SchedulingPicker extends StatelessWidget {
  final List<String> types;
  final int isCurrent;
  final PageController? controller;
  SchedulingPicker(
      {required this.types, required this.isCurrent, this.controller});

  @override
  Widget build(BuildContext context) {
    final textStyle =
        Theme.of(context).textTheme.headline1?.copyWith(fontSize: 16);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        children: typesScheduling(textStyle),
      ),
    );
  }

  List<Widget> typesScheduling(TextStyle? style) {
    List<Widget> list = [];

    for (int i = 0; i < 2; i++) {
      list.add(typeScheduling(i, style));
    }

    return list;
  }

  Widget typeScheduling(int index, TextStyle? style) {
    return Expanded(
      child: InkWell(
        onTap: () {
          print(index);
          controller?.jumpToPage(index);
        },
        child: Column(
          children: [
            Text(types[index], style: style),
            SizedBox(height: 4),
            Visibility(
              visible: index == isCurrent,
              child: Container(
                width: double.infinity,
                height: 2,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
