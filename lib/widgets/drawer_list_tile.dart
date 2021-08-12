part of moralar_widgets;

class MoralarDrawerListTile extends StatelessWidget {
  final String titleText;
  final IconData icon;
  final Function()? onTap;

  const MoralarDrawerListTile({
    required this.titleText,
    required this.icon,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return InkWell(
      onTap: onTap!,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: MegaListTile(
          leading: Icon(
            icon,
            color: Colors.white,
          ),
          title: titleText,
          style: textTheme.bodyText2?.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
