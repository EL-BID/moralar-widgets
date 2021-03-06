part of moralar_widgets;

class MoralarAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double elevation;
  final Color backgroundColor;
  final String titleText;
  final TextStyle? titleStyle;
  final Widget? leading;
  final List<Widget>? actions;

  const MoralarAppBar({
    this.titleText = '',
    this.elevation = 0,
    this.backgroundColor = Colors.white,
    this.titleStyle,
    this.leading,
    this.actions,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return AppBar(
      elevation: elevation,
      backgroundColor: backgroundColor,
      centerTitle: true,
      title: Text(
        titleText,
        style: titleStyle ??
            textTheme.headline1?.copyWith(
              color:
                  backgroundColor == Colors.white ? Colors.black : Colors.white,
            ),
      ),
      leading: leading ??
          IconButton(
            icon: Icon(
              FontAwesomeIcons.angleLeft,
              color:
                  backgroundColor == Colors.white ? Colors.black : Colors.white,
            ),
            onPressed: Get.back,
          ),
      actions: actions,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56);
}
