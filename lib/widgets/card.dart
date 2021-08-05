part of moralar_widgets;

class ActivityCard extends StatelessWidget {
  final Image icon;
  final String title;
  final Color? color;
  final Function()? function;
  const ActivityCard(
      {required this.icon, required this.title, this.function, this.color});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return InkWell(
      onTap: function ?? () {},
      child: Container(
        padding: const EdgeInsets.only(top: 16),
        height: 120,
        width: double.infinity,
        color: color ?? Theme.of(context).primaryColor,
        child: Center(
            child: Column(
          children: [
            Container(
              height: 50,
              width: 50,
              child: icon,
            ),
            const SizedBox(height: 12),
            Text(title, style: textTheme.button),
          ],
        )),
      ),
    );
  }
}

class DefaultCard extends StatelessWidget {
  final int status;
  final Function()? function;
  final bool isQuiz;
  const DefaultCard(
      {required this.status, required this.isQuiz, this.function});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    const brownGrey = Color(0xFFb2b2b2);
    final currentColor =
        isQuiz ? Quiz.statusColor(status) : Scheduling.statusColor(status);
    final currentText =
        isQuiz ? Quiz.statusName(status) : Scheduling.statusName(status);

    return InkWell(
      onTap: function ?? () {},
      child: Container(
        margin: const EdgeInsets.only(bottom: 24),
        height: isQuiz ? 116 : 140,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.7),
              // spreadRadius: 1,
              blurRadius: 3,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(right: 16, left: 16, top: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Reunião TTS',
                      style: textTheme.headline1?.copyWith(
                        color: currentColor,
                      ),
                    ),
                    const SizedBox(height: 8),
                    rowWidgetText(
                      const Icon(
                        FontAwesomeIcons.calendar,
                        size: 16,
                        color: brownGrey,
                      ),
                      '26/09/2020',
                      textTheme.bodyText1,
                    ),
                    Visibility(
                      visible: !isQuiz,
                      child: Column(
                        children: [
                          const SizedBox(height: 8),
                          rowWidgetText(
                            const Icon(
                              FontAwesomeIcons.clock,
                              size: 16,
                              color: brownGrey,
                            ),
                            '14:30hrs',
                            textTheme.bodyText1,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 16),
                    rowWidgetText(
                      Center(
                        child: Container(
                          width: 16,
                          height: 16,
                          decoration: BoxDecoration(
                            color: currentColor,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                      currentText,
                      textTheme.bodyText2,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              color: currentColor,
              width: 24,
            )
          ],
        ),
      ),
    );
  }
}

class FinalizedCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const status = 3;
    final textTheme = Theme.of(context).textTheme;
    final currentColor = Scheduling.statusColor(status);
    final currentText = Scheduling.statusName(status);

    return InkWell(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.only(bottom: 24),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.7),
              // spreadRadius: 1,
              blurRadius: 3,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              color: currentColor,
              width: double.infinity,
              height: 24,
            ),
            Container(
              padding: const EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Reunião TTS',
                    style: textTheme.headline1?.copyWith(
                      color: currentColor,
                    ),
                  ),
                  const SizedBox(height: 8),
                  rowWidgetText(
                    Icon(
                      FontAwesomeIcons.calendar,
                      size: 16,
                      color: Assets.colors.brownGrey,
                    ),
                    '26/09/2020',
                    textTheme.bodyText1,
                  ),
                  const SizedBox(height: 8),
                  rowWidgetText(
                    Icon(
                      FontAwesomeIcons.clock,
                      size: 16,
                      color: Assets.colors.brownGrey,
                    ),
                    '14:30hrs',
                    textTheme.bodyText1,
                  ),
                  const SizedBox(height: 16),
                  rowWidgetText(
                    Center(
                      child: Container(
                        width: 16,
                        height: 16,
                        decoration: BoxDecoration(
                          color: currentColor,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    currentText,
                    textTheme.bodyText2,
                  ),
                  const SizedBox(height: 32),
                  Center(
                    child: Text(
                      'Descrição',
                      style: textTheme.headline1?.copyWith(
                        color: currentColor,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Center(
                    child: Text(
                      'TextoTextoTextoTextoTextoTextoTextoTextoTextoTextoTexto',
                      style: textTheme.bodyText1,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CourseCard extends StatelessWidget {
  final Function()? function;
  final bool isVideo;
  const CourseCard({this.function, required this.isVideo});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return InkWell(
      onTap: function ?? () {},
      child: Container(
        height: 120,
        margin: const EdgeInsets.only(bottom: 24),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.7),
              // spreadRadius: 1,
              blurRadius: 3,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 120,
              child: Image.network('https://picsum.photos/200'),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    isVideo ? 'Vídeo Explicativo' : 'Curso Lorem Ipsum',
                    style: textTheme.headline1?.copyWith(
                      color: Assets.colors.kellyGreen,
                    ),
                  ),
                  const SizedBox(height: 8),
                  rowWidgetText(
                    Icon(
                      FontAwesomeIcons.calendar,
                      size: 16,
                      color: Assets.colors.brownGrey,
                    ),
                    isVideo ? '26/09/2020' : '26/09/2020 - 03/10/2020',
                    textTheme.bodyText1,
                  ),
                  const SizedBox(height: 8),
                  Visibility(
                    visible: !isVideo,
                    child: rowWidgetText(
                      Icon(
                        FontAwesomeIcons.clock,
                        size: 16,
                        color: Assets.colors.brownGrey,
                      ),
                      '14:30hrs',
                      textTheme.bodyText1,
                    ),
                  ),
                ],
              ),
            ),
            Icon(FontAwesomeIcons.angleRight, color: Assets.colors.kellyGreen),
          ],
        ),
      ),
    );
  }
}

Widget rowWidgetText(Widget widget, String text, TextStyle? style) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      widget,
      const SizedBox(width: 8),
      Flexible(child: Text(text, style: style))
    ],
  );
}