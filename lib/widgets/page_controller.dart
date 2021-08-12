part of moralar_widgets;

class MoralarPageController extends StatelessWidget {
  final bool isFirstPage;

  const MoralarPageController({required this.isFirstPage});

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: MoralarWidgets.instance.userType == UserType.family,
      child: Container(
        padding: const EdgeInsets.only(bottom: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 8,
              width: 8,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: isFirstPage
                    ? MoralarColors.darkBlueGrey
                    : MoralarColors.brownGrey,
              ),
            ),
            const SizedBox(width: 16),
            Container(
              height: 8,
              width: 8,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: isFirstPage
                    ? MoralarColors.brownGrey
                    : MoralarColors.darkBlueGrey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
