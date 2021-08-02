part of moralar_widgets;

class DefaultScaffold extends StatelessWidget {
  final String? title;
  final Widget body;
  final Widget? leading;
  final Widget? actions;
  final double? elevation;
  DefaultScaffold({
    required this.body,
    this.title,
    this.leading,
    this.actions,
    this.elevation,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        elevation: elevation ?? 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(title ?? '', style: textTheme.headline1),
        leading: leading ??
            IconButton(
              icon: Icon(FontAwesomeIcons.angleLeft),
              onPressed: () => Get.back(),
            ),
        actions: [actions ?? Container()],
      ),
      backgroundColor: Colors.white,
      body: body,
    );
  }
}
