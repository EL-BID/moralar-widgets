part of moralar_widgets;

class MoralarDrawerHeader extends StatelessWidget {
  final String title;
  final String subtitle;

  const MoralarDrawerHeader({
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(
          backgroundColor: Colors.white,
          child: Icon(
            Icons.person,
            color: MoralarColors.strawberry,
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.headline1!.copyWith(
                    color: Colors.white,
                  ),
            ),
            Text(
              subtitle,
              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    color: Colors.white,
                  ),
            ),
          ],
        )
      ],
    );
  }
}
