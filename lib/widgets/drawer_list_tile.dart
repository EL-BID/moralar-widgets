part of moralar_widgets;

class MoralarDrawerListTile extends StatelessWidget {
  final String titleText;
  final IconData icon;

  const MoralarDrawerListTile({
    required this.titleText,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        color: Colors.white,
      ),
      title: Text(
        titleText,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
