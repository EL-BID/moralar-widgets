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

class QuizCard extends StatelessWidget {
  final Quiz quiz;
  final VoidCallback function;

  const QuizCard({required this.quiz, required this.function});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    const brownGrey = Color(0xFFb2b2b2);
    final currentColor = QuizService.statusColor(quiz.typeStatus);
    final currentText = QuizService.statusName(quiz.typeStatus);

    return InkWell(
      onTap: function,
      child: Container(
        margin: const EdgeInsets.only(bottom: 24),
        height: 180,
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      quiz.title,
                      style: textTheme.headline1?.copyWith(
                        color: currentColor,
                      ),
                    ),
                    const SizedBox(height: 8),
                    MegaListTile(
                      title: MoralarDate.secondsForDate(quiz.created ?? 0),
                      leading: const Icon(
                        FontAwesomeIcons.calendar,
                        size: 16,
                        color: brownGrey,
                      ),
                      style: textTheme.bodyText1,
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

class ScheduleCard extends StatelessWidget {
  final ScheduleHistory? schedule;
  final ScheduleDetails? scheduleDetails;
  final Function() function;

  const ScheduleCard({
    this.schedule,
    this.scheduleDetails,
    required this.function,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    Color currentColor;
    String currentText;
    String currentTitle;
    String date;
    String hour;

    if (schedule != null) {
      currentColor = Scheduling.statusColor(schedule!.typeScheduleStatus!);
      currentTitle = Scheduling.statusSubject(schedule!.typeSubject!);
      currentText = Scheduling.statusName(schedule!.typeScheduleStatus!);
      date = MoralarDate.secondsForDateHours(schedule!.date!).substring(0, 10);
      hour = MoralarDate.secondsForDateHours(schedule!.date!).substring(11, 16);
    } else {
      currentColor =
          Scheduling.statusColor(scheduleDetails!.typeScheduleStatus!);
      currentTitle = Scheduling.statusSubject(scheduleDetails!.typeSubject!);
      currentText = Scheduling.statusName(scheduleDetails!.typeScheduleStatus!);
      date = MoralarDate.secondsForDateHours(scheduleDetails!.date!)
          .substring(0, 10);
      hour = MoralarDate.secondsForDateHours(scheduleDetails!.date!)
          .substring(11, 16);
    }

    return InkWell(
      onTap: function,
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
                      currentTitle,
                      style: textTheme.headline1?.copyWith(
                        color: currentColor,
                      ),
                    ),
                    const SizedBox(height: 8),
                    MegaListTile(
                      title: date,
                      leading: const Icon(
                        FontAwesomeIcons.calendar,
                        size: 16,
                        color: MoralarColors.brownGrey,
                      ),
                      style: textTheme.bodyText1,
                    ),
                    Column(
                      children: [
                        const SizedBox(height: 8),
                        MegaListTile(
                          title: '${hour}hrs',
                          leading: const Icon(FontAwesomeIcons.clock,
                              size: 16, color: MoralarColors.brownGrey),
                          style: textTheme.bodyText1,
                        ),
                      ],
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
  final ScheduleDetails schedule;
  const FinalizedCard({required this.schedule});
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final currentColor = Scheduling.statusColor(schedule.typeScheduleStatus!);
    final currentText = Scheduling.statusName(schedule.typeScheduleStatus!);
    final String date =
        MoralarDate.secondsForDateHours(schedule.date!).substring(0, 10);
    final String hour =
        MoralarDate.secondsForDateHours(schedule.date!).substring(11, 16);

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
                    Scheduling.statusSubject(schedule.typeSubject!),
                    style: textTheme.headline1?.copyWith(
                      color: currentColor,
                    ),
                  ),
                  const SizedBox(height: 8),
                  MegaListTile(
                    title: '$date',
                    leading: const Icon(
                      FontAwesomeIcons.calendar,
                      size: 16,
                      color: MoralarColors.brownGrey,
                    ),
                    style: textTheme.bodyText1,
                  ),
                  MegaListTile(
                    title: '$hour hrs',
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
                      '${schedule.description}',
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
  final Function() function;
  final Course course;

  const CourseCard({
    required this.function,
    required this.course,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final String startDate = MoralarDate.secondsForDate(course.startDate);
    final String endDate = MoralarDate.secondsForDate(course.endDate);

    return InkWell(
      onTap: function,
      child: Container(
        height: 124,
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
              width: 124,
              height: 124,
              child: Image.network(
                course.img ?? 'https://picsum.photos/200',
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    course.title,
                    style: textTheme.headline1?.copyWith(
                      color: MoralarColors.kellyGreen,
                    ),
                  ),
                  MegaListTile(
                    title: '$startDate - $endDate',
                    leading: const Icon(
                      FontAwesomeIcons.calendar,
                      size: 14,
                      color: MoralarColors.brownGrey,
                    ),
                    style: textTheme.bodyText1?.copyWith(fontSize: 12),
                  ),
                  MegaListTile(
                    title: course.schedule,
                    leading: const Icon(
                      FontAwesomeIcons.clock,
                      size: 16,
                      color: MoralarColors.brownGrey,
                    ),
                    style: textTheme.bodyText1,
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

class VideoCard extends StatelessWidget {
  final Function() function;
  final Video video;

  const VideoCard({
    required this.function,
    required this.video,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return InkWell(
      onTap: function,
      child: Container(
        height: 124,
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
              width: 124,
              height: 124,
              child: Image.network(
                '${video.thumbnail}',
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    video.title,
                    style: textTheme.headline1?.copyWith(
                      color: MoralarColors.kellyGreen,
                    ),
                  ),
                  MegaListTile(
                    title: '${MoralarDate.secondsForDate(video.created)}',
                    leading: const Icon(
                      FontAwesomeIcons.calendar,
                      size: 14,
                      color: MoralarColors.brownGrey,
                    ),
                    style: textTheme.bodyText1?.copyWith(fontSize: 12),
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
  final Property property;

  const PropertyCard({this.function, required this.property});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final features = property.residencialPropertyFeatures;
    final address = property.residencialPropertyAdress;
    final bool isHouse = features.typeProperty! == 0;

    return InkWell(
      onTap: function ?? () {},
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
                  height: 196,
                  child: CarouselSlider.builder(
                    slideBuilder: (index) {
                      return Container(
                        width: double.infinity,
                        child: Image.network(
                          property.photo![index],
                          fit: BoxFit.cover,
                        ),
                      );
                    },
                    slideIndicator: CircularSlideIndicator(
                      indicatorBackgroundColor: MoralarColors.veryLightPink,
                      currentIndicatorColor: MoralarColors.strawberry,
                      padding: const EdgeInsets.only(bottom: 8),
                    ),
                    itemCount: property.photo!.length,
                    autoSliderTransitionCurve: Curves.easeIn,
                    autoSliderTransitionTime: const Duration(milliseconds: 800),
                    enableAutoSlider: true,
                    unlimitedMode: true,
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
                    title: address.streetAddress!,
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
                          title: '${features.squareFootage!.toInt()} m²',
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
                          title: '${features.numberOfBedrooms} quartos',
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
                    title:
                        '${property.interestedFamilies} famílias interessadas',
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

class PropertyFilterCard extends StatelessWidget {
  final PropertyFilter filter;
  final int imovel;
  final Function(int?) changeImovel;
  final TextEditingController startSquareFootage;
  final TextEditingController endSquareFootage;
  final TextEditingController startCondominiumValue;
  final TextEditingController endCondominiumValue;
  final TextEditingController startIptuValue;
  final TextEditingController endIptuValue;
  final TextEditingController startNumberOfBedrooms;
  final TextEditingController endNumberOfBedrooms;
  final TextEditingController neighborhood;
  final int hasGarage;
  final Function(int?) changeGarage;
  final int hasLadder;
  final Function(int?) changeLadder;
  final int hasRamp;
  final Function(int?) changeRamp;
  final int hasPCD;
  final Function(int?) changePCD;
  final VoidCallback apply;
  final VoidCallback remove;

  const PropertyFilterCard({
    required this.filter,
    required this.imovel,
    required this.changeImovel,
    required this.startSquareFootage,
    required this.endSquareFootage,
    required this.startCondominiumValue,
    required this.endCondominiumValue,
    required this.startIptuValue,
    required this.endIptuValue,
    required this.startNumberOfBedrooms,
    required this.endNumberOfBedrooms,
    required this.neighborhood,
    required this.hasGarage,
    required this.changeGarage,
    required this.hasLadder,
    required this.changeLadder,
    required this.hasRamp,
    required this.changeRamp,
    required this.hasPCD,
    required this.changePCD,
    required this.apply,
    required this.remove,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Container(
      margin: const EdgeInsets.only(bottom: 24),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.7),
            blurRadius: 3,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    Text(
                      'Imovel',
                      style: textTheme.bodyText2,
                    ),
                    Radio(
                      activeColor: MoralarColors.strawberry,
                      value: 0,
                      groupValue: imovel,
                      onChanged: changeImovel,
                    ),
                    Text(
                      'Todos',
                      style: textTheme.bodyText2,
                    ),
                    Radio(
                      activeColor: MoralarColors.strawberry,
                      value: 1,
                      groupValue: imovel,
                      onChanged: changeImovel,
                    ),
                    Text(
                      'Casa',
                      style: textTheme.bodyText2,
                    ),
                    Radio(
                      activeColor: MoralarColors.strawberry,
                      value: 2,
                      groupValue: imovel,
                      onChanged: changeImovel,
                    ),
                    Text(
                      'Apt.',
                      style: textTheme.bodyText2,
                    ),
                  ],
                ),
                Visibility(
                  visible: filter.startSquareFootage != null ||
                      filter.endSquareFootage != null,
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(top: 24),
                        width: 64,
                        child: Text(
                          'M²',
                          style: textTheme.bodyText2,
                        ),
                      ),
                      Flexible(
                        child: RowTextField(
                          textFields: [
                            MoralarTextField(
                              controller: startSquareFootage,
                              label: 'De:',
                              keyboard: TextInputType.number,
                              labelStyle: textTheme.bodyText2,
                              hintStyle: textTheme.bodyText2,
                            ),
                            MoralarTextField(
                              controller: endSquareFootage,
                              label: 'Até:',
                              keyboard: TextInputType.number,
                              labelStyle: textTheme.bodyText2,
                              hintStyle: textTheme.bodyText2,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Visibility(
                  visible: filter.startCondominiumValue != null ||
                      filter.endCondominiumValue != null,
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(top: 24),
                        width: 64,
                        child: Text(
                          'Cond.',
                          style: textTheme.bodyText2,
                        ),
                      ),
                      Flexible(
                        child: RowTextField(
                          textFields: [
                            MoralarTextField(
                              controller: startCondominiumValue,
                              label: 'De:',
                              keyboard: TextInputType.number,
                              labelStyle: textTheme.bodyText2,
                              hintStyle: textTheme.bodyText2,
                            ),
                            MoralarTextField(
                              controller: endCondominiumValue,
                              label: 'Até:',
                              keyboard: TextInputType.number,
                              labelStyle: textTheme.bodyText2,
                              hintStyle: textTheme.bodyText2,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Visibility(
                  visible: filter.startIptuValue != null ||
                      filter.endIptuValue != null,
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(top: 24),
                        width: 64,
                        child: Text(
                          'IPTU',
                          style: textTheme.bodyText2,
                        ),
                      ),
                      Flexible(
                        child: RowTextField(
                          textFields: [
                            MoralarTextField(
                              controller: startIptuValue,
                              label: 'De:',
                              keyboard: TextInputType.number,
                              labelStyle: textTheme.bodyText2,
                              hintStyle: textTheme.bodyText2,
                            ),
                            MoralarTextField(
                              controller: endIptuValue,
                              label: 'Até:',
                              keyboard: TextInputType.number,
                              labelStyle: textTheme.bodyText2,
                              hintStyle: textTheme.bodyText2,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Visibility(
                  visible: filter.startNumberOfBedrooms != null ||
                      filter.endNumberOfBedrooms != null,
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(top: 24),
                        width: 64,
                        child: Text(
                          'Quartos',
                          style: textTheme.bodyText2,
                        ),
                      ),
                      Flexible(
                        child: RowTextField(
                          textFields: [
                            MoralarTextField(
                              controller: startNumberOfBedrooms,
                              label: 'De:',
                              keyboard: TextInputType.number,
                              labelStyle: textTheme.bodyText2,
                              hintStyle: textTheme.bodyText2,
                            ),
                            MoralarTextField(
                              controller: endNumberOfBedrooms,
                              label: 'Até:',
                              keyboard: TextInputType.number,
                              labelStyle: textTheme.bodyText2,
                              hintStyle: textTheme.bodyText2,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Visibility(
                  visible: filter.neighborhood != null,
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(top: 24),
                        width: 64,
                        child: Text(
                          'Bairro',
                          style: textTheme.bodyText2,
                        ),
                      ),
                      Flexible(
                        child: MoralarTextField(
                          controller: neighborhood,
                          label: 'Nome do bairro',
                          keyboard: TextInputType.number,
                          labelStyle: textTheme.bodyText2,
                          hintStyle: textTheme.bodyText2,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 24),
                Visibility(
                  visible: filter.hasGarage != null,
                  child: Row(
                    children: [
                      Container(
                        width: 64,
                        child: Text(
                          'Garagem',
                          style: textTheme.bodyText2,
                        ),
                      ),
                      Radio(
                        activeColor: MoralarColors.strawberry,
                        value: 0,
                        groupValue: hasGarage,
                        onChanged: changeGarage,
                      ),
                      Text(
                        'Sim',
                        style: textTheme.bodyText2,
                      ),
                      Radio(
                        activeColor: MoralarColors.strawberry,
                        value: 1,
                        groupValue: hasGarage,
                        onChanged: changeGarage,
                      ),
                      Text(
                        'Não',
                        style: textTheme.bodyText2,
                      ),
                    ],
                  ),
                ),
                Visibility(
                  visible: filter.hasAccessLadder != null,
                  child: Row(
                    children: [
                      Container(
                        width: 64,
                        child: Text(
                          'Escada',
                          style: textTheme.bodyText2,
                        ),
                      ),
                      Radio(
                        activeColor: MoralarColors.strawberry,
                        value: 0,
                        groupValue: hasLadder,
                        onChanged: changeLadder,
                      ),
                      Text(
                        'Sim',
                        style: textTheme.bodyText2,
                      ),
                      Radio(
                        activeColor: MoralarColors.strawberry,
                        value: 1,
                        groupValue: hasLadder,
                        onChanged: changeLadder,
                      ),
                      Text(
                        'Não',
                        style: textTheme.bodyText2,
                      ),
                    ],
                  ),
                ),
                Visibility(
                  visible: filter.hasAccessRamp != null,
                  child: Row(
                    children: [
                      Container(
                        width: 64,
                        child: Text(
                          'Rampa',
                          style: textTheme.bodyText2,
                        ),
                      ),
                      Radio(
                        activeColor: MoralarColors.strawberry,
                        value: 0,
                        groupValue: hasRamp,
                        onChanged: changeRamp,
                      ),
                      Text(
                        'Sim',
                        style: textTheme.bodyText2,
                      ),
                      Radio(
                        activeColor: MoralarColors.strawberry,
                        value: 1,
                        groupValue: hasRamp,
                        onChanged: changeRamp,
                      ),
                      Text(
                        'Não',
                        style: textTheme.bodyText2,
                      ),
                    ],
                  ),
                ),
                Visibility(
                  visible: filter.hasAdaptedToPcd != null,
                  child: Row(
                    children: [
                      Container(
                        width: 64,
                        child: Text(
                          'PCD',
                          style: textTheme.bodyText2,
                        ),
                      ),
                      Radio(
                        activeColor: MoralarColors.strawberry,
                        value: 0,
                        groupValue: hasPCD,
                        onChanged: changePCD,
                      ),
                      Text(
                        'Sim',
                        style: textTheme.bodyText2,
                      ),
                      Radio(
                        activeColor: MoralarColors.strawberry,
                        value: 1,
                        groupValue: hasPCD,
                        onChanged: changePCD,
                      ),
                      Text(
                        'Não',
                        style: textTheme.bodyText2,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(height: 1, color: MoralarColors.brownGrey),
          Row(
            children: [
              Flexible(
                child: MoralarButton(
                  color: Colors.white,
                  child: Container(
                    alignment: Alignment.center,
                    child: const Text(
                      'Remover Filtro',
                      style: TextStyle(color: MoralarColors.strawberry),
                    ),
                  ),
                  onPressed: remove,
                ),
              ),
              Container(width: 1, height: 48, color: MoralarColors.brownGrey),
              Flexible(
                child: MoralarButton(
                  color: Colors.white,
                  child: Container(
                    alignment: Alignment.center,
                    child: const Text(
                      'Aplicar',
                      style: TextStyle(color: MoralarColors.waterBlue),
                    ),
                  ),
                  onPressed: apply,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class InformativeCard extends StatelessWidget {
  final Informative info;
  final bool checked;
  final bool isLoading;
  final Function()? function;
  const InformativeCard({
    required this.info,
    required this.checked,
    required this.isLoading,
    required this.function,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Container(
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
                  info.image,
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
                  child: Visibility(
                    visible: isLoading,
                    child: Container(
                      padding: const EdgeInsets.all(4),
                      child: const SizedBox(
                        width: 24,
                        height: 24,
                        child: CircularProgressIndicator(
                          valueColor: AlwaysStoppedAnimation<Color>(
                            MoralarColors.algaeGreen,
                          ),
                        ),
                      ),
                    ),
                    replacement: InkWell(
                      onTap: function,
                      child: MegaListTile(
                        title: 'Estou ciente',
                        leading: InformativeCheckBox(checked: checked),
                        style: textTheme.bodyText1?.copyWith(
                          color: MoralarColors.brownishGrey,
                        ),
                      ),
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
                  info.description,
                  style: textTheme.bodyText1?.copyWith(
                    color: MoralarColors.brownishGrey,
                  ),
                ),
                const SizedBox(height: 8),
                MegaListTile(
                  title: info.datePublish,
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
    );
  }
}

class NotifcationCard extends StatelessWidget {
  final MoralarNotification notification;
  final Function()? function;

  const NotifcationCard({
    required this.notification,
    this.function,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final bool isRead = notification.status;
    final String date =
        MoralarDate.secondsForDateHours(notification.created).substring(0, 10);
    final String hour =
        MoralarDate.secondsForDateHours(notification.created).substring(11, 16);

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
                      notification.title,
                      style: textTheme.headline1?.copyWith(
                        color: isRead
                            ? MoralarColors.brownGrey
                            : MoralarColors.kellyGreen,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Expanded(
                      child: Text(
                        notification.description,
                        style: textTheme.bodyText1,
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: MegaListTile(
                            title: date,
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
                            title: '${hour}hrs',
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
  final MoralarNotification notification;
  final Function()? function;

  const NotificationDetailsCard({
    required this.notification,
    this.function,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final String date =
        MoralarDate.secondsForDateHours(notification.created).substring(0, 10);
    final String hour =
        MoralarDate.secondsForDateHours(notification.created).substring(11, 16);
    final bool isRead = notification.status;

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
                    notification.title,
                    style: textTheme.headline1?.copyWith(
                      color: isRead
                          ? MoralarColors.brownGrey
                          : MoralarColors.kellyGreen,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    '${notification.description}',
                    style: textTheme.bodyText1?.copyWith(
                      color: MoralarColors.brownishGrey,
                    ),
                  ),
                  const SizedBox(height: 32),
                  Visibility(
                    visible: notification.image != null,
                    child: Container(
                      width: double.infinity,
                      height: 180,
                      child: Image.network(
                        notification.image!,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: MegaListTile(
                          title: date,
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
                          title: '${hour}hrs',
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

class FamilyCard extends StatelessWidget {
  final int status;
  final Function()? function;
  final bool isDetail;

  const FamilyCard({
    required this.status,
    this.function,
    this.isDetail = false,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: function ?? () {},
      child: Container(
        margin: const EdgeInsets.only(bottom: 24),
        height: 148,
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
                    const BoldNormal(
                        title: 'Número de Cadastro', body: '#1231245'),
                    const SizedBox(height: 8),
                    const BoldNormal(
                        title: 'Morador Titular', body: 'Lucas Santos'),
                    const SizedBox(height: 8),
                    const BoldNormal(
                        title: 'CPF do titular', body: '777.777.777-77'),
                    const SizedBox(height: 16),
                    MegaListTile(
                      leading: Container(
                        height: 8,
                        width: 8,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Family.statusColor(status),
                        ),
                      ),
                      title: Family.statusName(status),
                    )
                  ],
                ),
              ),
            ),
            Visibility(
              visible: isDetail,
              child: Container(),
              replacement: const Icon(
                FontAwesomeIcons.angleRight,
                color: MoralarColors.kellyGreen,
              ),
            ),
            const SizedBox(width: 24),
          ],
        ),
      ),
    );
  }
}

class FilterCard extends StatelessWidget {
  final String filterHint;
  final List<String> filterStatus;
  final VoidCallback? onPressed;
  final Function(String?)? onChanged;
  final bool isMatch;

  const FilterCard({
    this.filterHint = 'Selecionar',
    this.filterStatus = const ['Selecionar'],
    this.onPressed,
    this.onChanged,
    this.isMatch = false,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
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
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              MoralarTextField(
                controller: TextEditingController(),
                label: 'Pesquisa por Família',
                color: MoralarColors.brownGrey,
                prefixIcon: Container(
                  padding: const EdgeInsets.only(top: 15),
                  child: const Icon(FontAwesomeIcons.search, size: 16),
                ),
              ),
              Visibility(
                visible: !isMatch,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 12),
                    Text(
                      'Filtro de Status',
                      style: textTheme.bodyText1,
                    ),
                    DropdownButton<String>(
                      hint: Text(
                        filterHint,
                        style: textTheme.bodyText2,
                      ),
                      icon: const Icon(
                        FontAwesomeIcons.angleDown,
                        color: MoralarColors.brownGrey,
                      ),
                      elevation: 16,
                      style: textTheme.bodyText2,
                      underline: Container(
                        height: 2,
                        color: MoralarColors.brownGrey,
                      ),
                      isExpanded: true,
                      onChanged: onChanged ?? (s) {},
                      items:
                          filterStatus.map<DropdownMenuItem<String>>((value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ],
                ),
                replacement: MoralarTextField(
                  controller: TextEditingController(),
                  label: 'Pesquisa por Imóvel',
                  color: MoralarColors.brownGrey,
                  prefixIcon: Container(
                    padding: const EdgeInsets.only(top: 15),
                    child: const Icon(FontAwesomeIcons.search, size: 16),
                  ),
                ),
              ),
              const SizedBox(height: 24),
              const Divider(
                color: MoralarColors.brownGrey,
                height: 2,
              ),
              InkWell(
                onTap: onPressed ?? () {},
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  width: double.infinity,
                  alignment: Alignment.center,
                  child: Text(
                    'Buscar',
                    style: textTheme.button?.copyWith(
                      color: MoralarColors.waterBlue,
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}

class FamilyInfoCard extends StatelessWidget {
  final String title;
  final List<Widget> cards;

  const FamilyInfoCard({
    required this.title,
    required this.cards,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
      margin: const EdgeInsets.only(bottom: 24),
      padding: const EdgeInsets.fromLTRB(24, 24, 24, 0),
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
          Text(
            title,
            style: textTheme.headline4?.copyWith(
              color: MoralarColors.brownishGrey,
            ),
          ),
          const SizedBox(height: 24),
          Column(
            children: cards,
          ),
        ],
      ),
    );
  }
}

class MoralarTTSCard extends StatelessWidget {
  final int status;
  final Function()? function;
  final bool isCourse;

  const MoralarTTSCard(
      {required this.status, required this.isCourse, this.function});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    const brownGrey = Color(0xFFb2b2b2);
    final currentColor = isCourse
        ? CourseService.statusColor(status)
        : QuizService.statusColor(status);
    final currentText = isCourse
        ? CourseService.statusName(status)
        : QuizService.statusName(status);

    return InkWell(
      onTap: function ?? () {},
      child: Container(
        margin: const EdgeInsets.only(bottom: 24),
        height: isCourse ? 164 : 100,
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
                      isCourse ? 'Curso 1' : 'Questionario/Enquete',
                      style: textTheme.headline1,
                    ),
                    const SizedBox(height: 8),
                    Visibility(
                      visible: isCourse,
                      child: MegaListTile(
                        title: '26/09/2020',
                        leading: const Icon(
                          FontAwesomeIcons.calendar,
                          size: 16,
                          color: brownGrey,
                        ),
                        style: textTheme.bodyText1,
                      ),
                    ),
                    Visibility(
                      visible: isCourse,
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

class SchedulingTTSCard extends StatelessWidget {
  final int status;
  const SchedulingTTSCard({required this.status});
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

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
              color: status == 0
                  ? MoralarColors.brownGrey
                  : MoralarColors.kellyGreen,
              width: double.infinity,
              height: 24,
            ),
            Container(
              padding: const EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    // ignore: lines_longer_than_80_chars
                    'Reunião TTSReunião TTSReunião TTSReunião TTSReunião TTSReunião TTSReunião TTSReunião TTSReunião TTSReunião TTSReunião TTSReunião',
                    style: textTheme.bodyText1,
                  ),
                  const SizedBox(height: 8),
                  MegaListTile(
                    title: '26/09/2020 ás 14:35hrs',
                    leading: const Icon(
                      FontAwesomeIcons.calendar,
                      size: 16,
                      color: MoralarColors.brownGrey,
                    ),
                    style: textTheme.bodyText1,
                  ),
                  MegaListTile(
                    title: status == 0 ? 'Finalizado' : 'Confirmado',
                    leading: Container(
                      alignment: Alignment.center,
                      width: 16,
                      height: 16,
                      decoration: BoxDecoration(
                        color: status == 0
                            ? MoralarColors.brownGrey
                            : MoralarColors.kellyGreen,
                        shape: BoxShape.circle,
                      ),
                    ),
                    style: textTheme.bodyText2,
                  ),
                  Visibility(
                    visible: status == 0 || status == 2,
                    child: Column(
                      children: [
                        const SizedBox(height: 16),
                        MoralarButton(
                          onPressed: () {},
                          color: status == 0
                              ? MoralarColors.brownGrey
                              : MoralarColors.kellyGreen,
                          child: Container(
                            alignment: Alignment.center,
                            child: Text(
                              status == 0
                                  ? 'Ver Detalhes'
                                  : 'Confirmar Mudança',
                              style: textTheme.button,
                            ),
                          ),
                        ),
                      ],
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

class PropertyTTSCard extends StatelessWidget {
  final Function()? function;
  final bool isHouse;

  const PropertyTTSCard({this.function, required this.isHouse});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Container(
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
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Column(
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
                      MegaListTile(
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
                    ],
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: MoralarButton(
                    child: Container(
                      alignment: Alignment.center,
                      child: Text('Liberar Etapa', style: textTheme.button),
                    ),
                    onPressed: function ?? () {},
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MatchCard extends StatelessWidget {
  const MatchCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: const [
          BoldNormal(title: 'Número do Cadastro', body: '#12345'),
          SizedBox(height: 4),
          BoldNormal(title: 'Morador Titular', body: 'Diego Mura'),
          SizedBox(height: 4),
          BoldNormal(title: 'CPF do titular', body: '123.123.123-12'),
          SizedBox(height: 4),
          BoldNormal(title: 'Código do imóvel', body: '#2012314'),
          SizedBox(height: 4),
          BoldNormal(title: 'Endereço', body: 'Avenida Paulista, 2022'),
          SizedBox(height: 4),
          BoldNormal(title: 'Número de interessados', body: '22 famílias'),
        ],
      ),
    );
  }
}
