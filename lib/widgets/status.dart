part of moralar_widgets;

class StatusResettlement extends StatelessWidget {
  final ScheduleHistory schedule;
  final bool isFirst;

  const StatusResettlement({
    required this.schedule,
    required this.isFirst,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Row(
      children: [
        Column(
          children: [
            Visibility(
              visible: !isFirst,
              child: Column(
                children: [
                  const SizedBox(height: 8),
                  Container(
                    height: 25,
                    width: 2,
                    color: schedule.typeScheduleStatus == 1
                        ? MoralarColors.kellyGreen
                        : MoralarColors.brownGrey,
                  ),
                  const SizedBox(height: 8),
                ],
              ),
            ),
            Container(
              height: 30,
              width: 30,
              decoration: schedule.typeScheduleStatus == 1
                  ? const BoxDecoration(
                      color: MoralarColors.kellyGreen,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    )
                  : BoxDecoration(
                      color: Colors.white,
                      border:
                          Border.all(width: 2, color: MoralarColors.brownGrey),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
              child: Visibility(
                visible: schedule.typeScheduleStatus == 1,
                child: Container(
                  alignment: Alignment.center,
                  child: const FaIcon(FontAwesomeIcons.check,
                      color: Colors.white, size: 18),
                ),
              ),
            ),
          ],
        ),
        Container(
          padding: EdgeInsets.fromLTRB(16, isFirst ? 0 : 36, 16, 0),
          child: Text(
            Scheduling.statusSubject(schedule.typeSubject!),
            style: textTheme.headline1!.copyWith(
              color: schedule.typeScheduleStatus == 1
                  ? MoralarColors.kellyGreen
                  : MoralarColors.brownGrey,
            ),
          ),
        ),
      ],
    );
  }
}
