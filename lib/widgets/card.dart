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
        ),
      ),
    );
  }
}

class MoralarCard extends StatelessWidget {
  final int status;
  final Function()? function;
  final bool isQuiz;

  const MoralarCard(
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
        height: isQuiz ? 124 : 164,
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
                    MegaListTile(
                      title: '26/09/2020',
                      leading: const Icon(
                        FontAwesomeIcons.calendar,
                        size: 16,
                        color: brownGrey,
                      ),
                      style: textTheme.bodyText1,
                    ),
                    Visibility(
                      visible: !isQuiz,
                      child: Column(
                        children: [
                          const SizedBox(height: 8),
                          MegaListTile(
                            title: '14:30hrs',
                            leading: const Icon(
                              FontAwesomeIcons.clock,
                              size: 16,
                              color: brownGrey,
                            ),
                            style: textTheme.bodyText1,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 8),
                    MegaListTile(
                      title: currentText,
                      leading: Container(
                        width: 16,
                        height: 16,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: currentColor,
                          shape: BoxShape.circle,
                        ),
                      ),
                      style: textTheme.bodyText2,
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
                  MegaListTile(
                    title: '26/09/2020',
                    leading: const Icon(
                      FontAwesomeIcons.calendar,
                      size: 16,
                      color: MoralarColors.brownGrey,
                    ),
                    style: textTheme.bodyText1,
                  ),
                  MegaListTile(
                    title: '14:30hrs',
                    leading: const Icon(
                      FontAwesomeIcons.clock,
                      size: 16,
                      color: MoralarColors.brownGrey,
                    ),
                    style: textTheme.bodyText1,
                  ),
                  const SizedBox(height: 8),
                  MegaListTile(
                    title: currentText,
                    leading: Container(
                      alignment: Alignment.center,
                      width: 16,
                      height: 16,
                      decoration: BoxDecoration(
                        color: currentColor,
                        shape: BoxShape.circle,
                      ),
                    ),
                    style: textTheme.bodyText2,
                  ),
                  const SizedBox(height: 16),
                  Container(
                    alignment: Alignment.center,
                    child: Text(
                      'Descrição',
                      style: textTheme.headline1?.copyWith(
                        color: currentColor,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Container(
                    alignment: Alignment.center,
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
                      color: MoralarColors.kellyGreen,
                    ),
                  ),
                  MegaListTile(
                    title: isVideo ? '26/09/2020' : '26/09/2020 - 03/10/2020',
                    leading: const Icon(
                      FontAwesomeIcons.calendar,
                      size: 16,
                      color: MoralarColors.brownGrey,
                    ),
                    style: textTheme.bodyText1,
                  ),
                  Visibility(
                    visible: !isVideo,
                    child: MegaListTile(
                      title: '14:30hrs',
                      leading: const Icon(
                        FontAwesomeIcons.clock,
                        size: 16,
                        color: MoralarColors.brownGrey,
                      ),
                      style: textTheme.bodyText1,
                    ),
                  ),
                ],
              ),
            ),
            const Icon(
              FontAwesomeIcons.angleRight,
              color: MoralarColors.kellyGreen,
            ),
          ],
        ),
      ),
    );
  }
}

class PropertyCard extends StatelessWidget {
  final Function()? function;
  final bool isHouse;

  const PropertyCard({this.function, required this.isHouse});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return InkWell(
      onTap: function!,
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
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 164,
                  child: Image.network(
                    'https://picsum.photos/200',
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  width: isHouse ? 80 : 132,
                  top: 16,
                  left: 24,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.7),
                          blurRadius: 3,
                          offset: const Offset(0, 1),
                        ),
                      ],
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    alignment: Alignment.center,
                    child: MegaListTile(
                      title: isHouse ? 'Casa' : 'Apartamento',
                      leading: Icon(
                        isHouse
                            ? FontAwesomeIcons.home
                            : FontAwesomeIcons.solidBuilding,
                        size: 16,
                        color: MoralarColors.brownishGrey,
                      ),
                      style: textTheme.bodyText1?.copyWith(
                        color: MoralarColors.brownishGrey,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MegaListTile(
                    title: 'Bela Vista',
                    leading: const Icon(
                      FontAwesomeIcons.mapMarkerAlt,
                      size: 16,
                      color: MoralarColors.brownishGrey,
                    ),
                    style: textTheme.bodyText1?.copyWith(
                      color: MoralarColors.brownishGrey,
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: MegaListTile(
                          title: '120 m²',
                          leading: const Icon(
                            FontAwesomeIcons.ruler,
                            size: 16,
                            color: MoralarColors.brownishGrey,
                          ),
                          style: textTheme.bodyText1?.copyWith(
                            color: MoralarColors.brownishGrey,
                          ),
                        ),
                      ),
                      Expanded(
                        child: MegaListTile(
                          title: '2 quartos',
                          leading: const Icon(
                            FontAwesomeIcons.bed,
                            size: 16,
                            color: MoralarColors.brownishGrey,
                          ),
                          style: textTheme.bodyText1?.copyWith(
                            color: MoralarColors.brownishGrey,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  MegaListTile(
                    title: '20 famílias interessadas',
                    leading: const Icon(
                      FontAwesomeIcons.users,
                      size: 16,
                      color: MoralarColors.brownishGrey,
                    ),
                    style: textTheme.bodyText1?.copyWith(
                      color: MoralarColors.brownishGrey,
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

class InformativeCard extends StatelessWidget {
  final Function()? function;
  final bool checkbox;

  const InformativeCard({this.function, required this.checkbox});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return InkWell(
      onTap: function!,
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
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 200,
                  child: Image.network(
                    'https://picsum.photos/200',
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  width: 128,
                  top: 16,
                  left: 24,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.7),
                          blurRadius: 3,
                          offset: const Offset(0, 1),
                        ),
                      ],
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    alignment: Alignment.center,
                    child: MegaListTile(
                      title: 'Estou ciente',
                      leading: Container(
                        height: 16,
                        width: 16,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: checkbox
                                ? MoralarColors.algaeGreen
                                : MoralarColors.brownishGrey,
                            width: 2,
                          ),
                          color: checkbox
                              ? MoralarColors.algaeGreen
                              : Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: Container(
                          height: 12,
                          width: 12,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.white,
                              width: 2,
                            ),
                            color: checkbox
                                ? MoralarColors.algaeGreen
                                : Colors.white,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                      style: textTheme.bodyText1?.copyWith(
                        color: MoralarColors.brownishGrey,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    // ignore: lines_longer_than_80_chars
                    'Lorem ipsum dolor sit amet, consectetur  adipiscingelit, sed do eiusmod tempor  incididunt ut labore etdolore magna aliqua.',
                    style: textTheme.bodyText1?.copyWith(
                      color: MoralarColors.brownishGrey,
                    ),
                  ),
                  const SizedBox(height: 8),
                  MegaListTile(
                    title: '26/09/2020',
                    leading: const Icon(
                      FontAwesomeIcons.calendar,
                      size: 16,
                      color: MoralarColors.brownishGrey,
                    ),
                    style: textTheme.bodyText1?.copyWith(
                      color: MoralarColors.brownishGrey,
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

class NotifcationCard extends StatelessWidget {
  final bool isRead;
  final Function()? function;

  const NotifcationCard({required this.isRead, this.function});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return InkWell(
      onTap: function ?? () {},
      child: Container(
        margin: const EdgeInsets.only(bottom: 24),
        height: 164,
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
                      'Notificação',
                      style: textTheme.headline1?.copyWith(
                        color: isRead
                            ? MoralarColors.brownGrey
                            : MoralarColors.kellyGreen,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Expanded(
                      child: Text(
                        // ignore: lines_longer_than_80_chars
                        'Lorem ipsum dolor sit amet, consectetur  adipiscing elit, sed do eiusmod tempor  incididunt ut labore et dolore magna aliqua.',
                        style: textTheme.bodyText1,
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: MegaListTile(
                            title: '26/09/2020',
                            leading: const Icon(
                              FontAwesomeIcons.calendar,
                              size: 16,
                              color: MoralarColors.brownGrey,
                            ),
                            style: textTheme.bodyText1,
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: MegaListTile(
                            title: '14:30hrs',
                            leading: const Icon(
                              FontAwesomeIcons.clock,
                              size: 16,
                              color: MoralarColors.brownGrey,
                            ),
                            style: textTheme.bodyText1,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                  ],
                ),
              ),
            ),
            Container(
              color:
                  isRead ? MoralarColors.brownGrey : MoralarColors.kellyGreen,
              width: 24,
            )
          ],
        ),
      ),
    );
  }
}

class NotificationDetailsCard extends StatelessWidget {
  final Function()? function;
  final bool isRead;

  const NotificationDetailsCard({this.function, required this.isRead});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return InkWell(
      onTap: function!,
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
              height: 24,
              width: double.infinity,
              color:
                  isRead ? MoralarColors.brownGrey : MoralarColors.kellyGreen,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Notificação',
                    style: textTheme.headline1?.copyWith(
                      color: isRead
                          ? MoralarColors.brownGrey
                          : MoralarColors.kellyGreen,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    // ignore: lines_longer_than_80_chars
                    'Lorem ipsum dolor sit amet, consectetur  adipiscingelit, sed do eiusmod tempor  incididunt ut labore etdolore magna aliqua.',
                    style: textTheme.bodyText1?.copyWith(
                      color: MoralarColors.brownishGrey,
                    ),
                  ),
                  Text(
                    // ignore: lines_longer_than_80_chars
                    'Lorem ipsum dolor sit amet, consectetur  adipiscingelit, sed do eiusmod tempor  incididunt ut labore etdolore magna aliqua.',
                    style: textTheme.bodyText1?.copyWith(
                      color: MoralarColors.brownishGrey,
                    ),
                  ),
                  Text(
                    // ignore: lines_longer_than_80_chars
                    'Lorem ipsum dolor sit amet, consectetur  adipiscingelit, sed do eiusmod tempor  incididunt ut labore etdolore magna aliqua.',
                    style: textTheme.bodyText1?.copyWith(
                      color: MoralarColors.brownishGrey,
                    ),
                  ),
                  const SizedBox(height: 32),
                  Container(
                    width: double.infinity,
                    height: 180,
                    child: Image.network(
                      'https://picsum.photos/200',
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: MegaListTile(
                          title: '26/09/2020',
                          leading: const Icon(
                            FontAwesomeIcons.calendar,
                            size: 16,
                            color: MoralarColors.brownishGrey,
                          ),
                          style: textTheme.bodyText1!.copyWith(
                            color: MoralarColors.brownishGrey,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: MegaListTile(
                          title: '14:30hrs',
                          leading: const Icon(
                            FontAwesomeIcons.clock,
                            size: 16,
                            color: MoralarColors.brownishGrey,
                          ),
                          style: textTheme.bodyText1!.copyWith(
                            color: MoralarColors.brownishGrey,
                          ),
                        ),
                      ),
                    ],
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
