part of moralar_widgets;

class StatusResettlement extends StatelessWidget {
  final ScheduleDetails schedule;
  final bool isFirst;

  const StatusResettlement({
    required this.schedule,
    required this.isFirst,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Row(
      // mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            Visibility(
              visible: !isFirst,
              child: Column(
                children: [
                  const SizedBox(height: 8),
                  Container(
                    height: 24,
                    width: 2,
                    color: schedule.typeScheduleStatus == 4
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
              decoration: schedule.typeScheduleStatus == 4
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
                visible: schedule.typeScheduleStatus == 4,
                child: Container(
                  alignment: Alignment.center,
                  child: const FaIcon(FontAwesomeIcons.check,
                      color: Colors.white, size: 18),
                ),
              ),
            ),
          ],
        ),
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Visibility(
                  visible: !isFirst,
                  child: const SizedBox(
                    height: 36,
                  ),
                ),
                Text(
                  Scheduling.statusSubject(schedule.typeSubject ?? 9),
                  style: textTheme.headline1!.copyWith(
                    color: schedule.typeScheduleStatus == 4
                        ? MoralarColors.kellyGreen
                        : MoralarColors.brownGrey,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  schedule.description ?? '',
                  style: textTheme.bodyText1!.copyWith(
                    color: MoralarColors.brownGrey,
                  ),
                  maxLines: 5,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          )
        ),
      ],
    );
  }
}
