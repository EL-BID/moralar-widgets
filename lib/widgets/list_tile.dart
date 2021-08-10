part of moralar_widgets;

class MegaListTile extends StatelessWidget {
  final String title;
  final Widget? leading;
  final TextStyle? style;

  const MegaListTile({required this.title, this.leading, this.style});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      minLeadingWidth: 4,
      horizontalTitleGap: 8,
      visualDensity: const VisualDensity(vertical: -4),
      contentPadding: EdgeInsets.zero,
      leading: leading,
      title: Text(title, style: style),
    );
  }
}
