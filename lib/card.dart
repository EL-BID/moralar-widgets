part of moralar_widgets;

class ActivityCard extends StatelessWidget {
  final Image icon;
  final String title;
  final Color? color;
  final Function()? function;
  ActivityCard(
      {required this.icon, required this.title, this.function, this.color});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return InkWell(
      onTap: function ?? () {},
      child: Container(
        padding: EdgeInsets.only(top: 16),
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
            SizedBox(height: 12),
            Text(title, style: textTheme.button),
          ],
        )),
      ),
    );
  }
}

class SchedulingCard extends StatelessWidget {
  final int status;
  final Function()? function;
  SchedulingCard({required this.status, this.function});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final brownGrey = Color(0xFFb2b2b2);

    return InkWell(
      onTap: function ?? () {},
      child: Padding(
        padding: const EdgeInsets.only(bottom: 24),
        child: Container(
          height: 140,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.7),
                // spreadRadius: 1,
                blurRadius: 3,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(right: 16, left: 16, top: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Reunião TTS',
                        style:
                            textTheme.headline1?.copyWith(color: statusColor()),
                      ),
                      SizedBox(height: 8),
                      rowWidgetText(
                        Icon(
                          FontAwesomeIcons.calendar,
                          size: 16,
                          color: brownGrey,
                        ),
                        '26/09/2020',
                        textTheme.bodyText1,
                      ),
                      SizedBox(height: 8),
                      rowWidgetText(
                        Icon(
                          FontAwesomeIcons.clock,
                          size: 16,
                          color: brownGrey,
                        ),
                        '14:30hrs',
                        textTheme.bodyText1,
                      ),
                      SizedBox(height: 16),
                      rowWidgetText(
                        Center(
                          child: Container(
                            width: 16,
                            height: 16,
                            decoration: BoxDecoration(
                              color: statusColor(),
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                        statusName(),
                        textTheme.bodyText2,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                color: statusColor(),
                width: 24,
              )
            ],
          ),
        ),
      ),
    );
  }

  String statusName() {
    if (status == 0) {
      return 'Confirmado';
    } else if (status == 1) {
      return 'Aguardando Confirmação';
    } else if (status == 2) {
      return 'Aguardando Reagendamento';
    } else if (status == 3) {
      return 'Finalizado';
    } else {
      return '';
    }
  }

  Color statusColor() {
    if (status == 0) {
      return Color(0xFF06b12e);
    } else if (status == 1) {
      return Color(0xFFffaa00);
    } else if (status == 2) {
      return Color(0xFFfb2a47);
    } else if (status == 3) {
      return Color(0xFFb2b2b2);
    } else {
      return Colors.white;
    }
  }

  Widget rowWidgetText(Widget widget, String text, TextStyle? style) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        widget,
        SizedBox(width: 8),
        Flexible(child: Text(text, style: style))
      ],
    );
  }
}
