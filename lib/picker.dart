part of moralar_widgets;

class MoralarPicker extends StatelessWidget {
  final List<String> types;
  final int isCurrent;
  final PageController? controller;
  final Color? color;
  final double? verticalPadding;
  final double? horizontalPadding;

  const MoralarPicker({
    required this.types,
    required this.isCurrent,
    this.controller,
    this.color,
    this.verticalPadding,
    this.horizontalPadding,
  });

  @override
  Widget build(BuildContext context) {
    final textStyle =
        Theme.of(context).textTheme.headline1?.copyWith(fontSize: 16);

    return Container(
      padding: EdgeInsets.symmetric(
        vertical: verticalPadding ?? 0,
      ),
      color: color ?? Colors.white,
      child: Row(
        children: typesScheduling(textStyle),
      ),
    );
  }

  List<Widget> typesScheduling(TextStyle? style) {
    final list = <Widget>[];
    for (var i = 0; i < 2; i++) {
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
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: horizontalPadding ?? 0,
          ),
          child: Column(
            children: [
              Text(
                types[index],
                style: color != null
                    ? style?.copyWith(color: Colors.white)
                    : style,
              ),
              const SizedBox(height: 4),
              Visibility(
                visible: index == isCurrent,
                child: Container(
                  width: double.infinity,
                  height: 2,
                  color: color != null ? Colors.white : Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
