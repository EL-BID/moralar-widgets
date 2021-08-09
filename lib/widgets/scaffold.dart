part of moralar_widgets;

class DefaultScaffold extends StatelessWidget {
  final String? title;
  final Widget body;
  final Widget? leading;
  final Widget? actions;
  final double? elevation;
  final Color? color;
  final Color? backgroundColor;
  const DefaultScaffold({
    required this.body,
    this.title,
    this.leading,
    this.actions,
    this.elevation,
    this.color,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        elevation: elevation ?? 0,
        backgroundColor: color ?? Colors.white,
        centerTitle: true,
        title: Text(
          title ?? '',
          style: color == null
              ? textTheme.headline1
              : textTheme.headline1?.copyWith(color: Colors.white),
        ),
        leading: leading ??
            IconButton(
              icon: Icon(
                FontAwesomeIcons.angleLeft,
                color: color == null ? Colors.black : Colors.white,
              ),
              onPressed: Get.back,
            ),
        actions: [actions ?? Container()],
      ),
      backgroundColor: backgroundColor ?? Colors.white,
      body: body,
    );
  }
}
