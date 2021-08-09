part of moralar_widgets;

class MoralarScaffold extends StatelessWidget {
  final Widget body;
  final PreferredSizeWidget appBar;
  final Color backgroundColor;

  const MoralarScaffold({
    this.body = const SizedBox.shrink(),
    this.backgroundColor = MoralarColors.veryLightPink,
    this.appBar = const MoralarAppBar(),
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      backgroundColor: backgroundColor,
      body: body,
    );
  }
}
