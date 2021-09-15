part of moralar_widgets;

class SpouseForm extends StatelessWidget {
  final Spouse spouse;
  final int radio;
  final Function(int?) onChangedRadio;
  final String schoolSpouse;
  final Function(String?)? onChangedSchool;
  final List<String> schoolTypes;

  const SpouseForm({
    required this.spouse,
    required this.radio,
    required this.onChangedRadio,
    required this.schoolSpouse,
    required this.onChangedSchool,
    required this.schoolTypes,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
      children: [
        Text(
          'Dados do Cônjuge',
          style: textTheme.headline2?.copyWith(
            fontSize: 24,
          ),
        ),
        const SizedBox(height: 16),
        Text(
          // ignore: lines_longer_than_80_chars
          'Lorem ipsum dolor sit amet, consectetur  adi sed do eiusmod tempor  incididunt ut labore etdolore magna aliqua.  Ut enim ad minim veniam.',
          style: textTheme.bodyText1,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 16),
        MoralarTextField(
          label: 'Nome do Cônjuge',
          color: MoralarColors.waterBlue,
          controller: TextEditingController(text: spouse.name),
          readOnly: true,
          labelStyle: textTheme.bodyText1
              ?.copyWith(color: MoralarColors.waterBlue, fontSize: 16),
        ),
        const SizedBox(height: 16),
        MoralarTextField(
          label: 'Data de Nascimento',
          controller: TextEditingController(
            text: MoralarDate.secondsForDate(spouse.birthday),
          ),
          readOnly: true,
          color: MoralarColors.waterBlue,
          labelStyle: textTheme.bodyText1
              ?.copyWith(color: MoralarColors.waterBlue, fontSize: 16),
        ),
        const SizedBox(height: 32),
        Container(
          alignment: Alignment.topLeft,
          child: Text(
            'Gênero',
            style: textTheme.headline3?.copyWith(
              color: MoralarColors.brownishGrey,
            ),
          ),
        ),
        Column(
          children: [
            RadioListTile(
              value: 0,
              groupValue: radio,
              onChanged: onChangedRadio,
              contentPadding: EdgeInsets.zero,
              title: Text('Masculino', style: textTheme.bodyText2),
            ),
            RadioListTile(
              value: 1,
              groupValue: radio,
              onChanged: onChangedRadio,
              contentPadding: EdgeInsets.zero,
              title: Text('Feminino', style: textTheme.bodyText2),
            ),
            RadioListTile(
              value: 2,
              groupValue: radio,
              onChanged: onChangedRadio,
              contentPadding: EdgeInsets.zero,
              title: Text('Outro', style: textTheme.bodyText2),
            ),
          ],
        ),
        const SizedBox(height: 32),
        Container(
          alignment: Alignment.topLeft,
          child: Text(
            'Escolaridade',
            style: textTheme.headline3?.copyWith(
              color: MoralarColors.brownishGrey,
            ),
          ),
        ),
        DropdownButton<String>(
          hint: Text(
            schoolSpouse,
            style: textTheme.bodyText2,
          ),
          icon: const Icon(FontAwesomeIcons.angleDown),
          elevation: 16,
          style: textTheme.bodyText2,
          underline: Container(
            height: 2,
            color: MoralarColors.brownishGrey,
          ),
          isExpanded: true,
          onChanged: onChangedSchool,
          items: schoolTypes.map<DropdownMenuItem<String>>((value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
        const SizedBox(height: 32),
      ],
    );
  }
}

class MemberForm extends StatelessWidget {
  final FamilyMember member;
  final int radio;
  final Function(int?) onChangedRadio;
  final String school;
  final Function(String?)? onChangedSchool;
  final List<String> schoolTypes;
  final String kinship;
  final Function(String?)? onChangedKinship;
  final List<String> kinships;
  final bool readOnly;

  const MemberForm({
    required this.member,
    required this.radio,
    required this.onChangedRadio,
    required this.school,
    required this.onChangedSchool,
    required this.schoolTypes,
    required this.kinship,
    required this.onChangedKinship,
    required this.kinships,
    required this.readOnly,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final _birthdayController = TextEditingController(
      text: MoralarDate.secondsForDate(member.birthday),
    );
    return Column(
      children: [
        MoralarTextField(
          label: 'Nome do Familiar',
          color: MoralarColors.waterBlue,
          controller: TextEditingController(text: member.name),
          readOnly: readOnly,
          labelStyle: textTheme.bodyText1
              ?.copyWith(color: MoralarColors.waterBlue, fontSize: 16),
          onChanged: (s) {
            member.name = s!;
          },
        ),
        const SizedBox(height: 16),
        MoralarTextField(
          label: 'Data de Nascimento',
          controller: _birthdayController,
          readOnly: readOnly,
          formats: [Formats.dateMaskFormatter],
          keyboard: const TextInputType.numberWithOptions(
            signed: true,
          ),
          color: MoralarColors.waterBlue,
          labelStyle: textTheme.bodyText1
              ?.copyWith(color: MoralarColors.waterBlue, fontSize: 16),
          onFieldSubmitted: (s) {
            if (MoralarDate.verifyDayMonth(s!)) {
              member.birthday = MoralarDate.dateForSeconds(s);
            } else {
              member.birthday = MoralarDate.dateForSeconds('');
              Get.snackbar(
                'Algo deu errado!',
                'Verifique se a data está digitada da forma correta: dd/MM/yyyy',
                colorText: MoralarColors.veryLightPink,
                backgroundColor: MoralarColors.strawberry,
              );
            }
          },
          onChanged: (s) {
            member.birthday = MoralarDate.dateForSeconds(s!);
          },
        ),
        const SizedBox(height: 32),
        Container(
          alignment: Alignment.topLeft,
          child: Text(
            'Gênero',
            style: textTheme.headline3?.copyWith(
              color: MoralarColors.brownishGrey,
            ),
          ),
        ),
        Column(
          children: [
            RadioListTile(
              value: 0,
              groupValue: radio,
              onChanged: onChangedRadio,
              contentPadding: EdgeInsets.zero,
              title: Text('Masculino', style: textTheme.bodyText2),
            ),
            RadioListTile(
              value: 1,
              groupValue: radio,
              onChanged: onChangedRadio,
              contentPadding: EdgeInsets.zero,
              title: Text('Feminino', style: textTheme.bodyText2),
            ),
            RadioListTile(
              value: 2,
              groupValue: radio,
              onChanged: onChangedRadio,
              contentPadding: EdgeInsets.zero,
              title: Text('Outro', style: textTheme.bodyText2),
            ),
          ],
        ),
        const SizedBox(height: 32),
        Container(
          alignment: Alignment.topLeft,
          child: Text(
            'Parentesco',
            style: textTheme.headline3?.copyWith(
              color: MoralarColors.brownishGrey,
            ),
          ),
        ),
        DropdownButton<String>(
          hint: Text(
            kinship,
            style: textTheme.bodyText2,
          ),
          icon: const Icon(FontAwesomeIcons.angleDown),
          elevation: 16,
          style: textTheme.bodyText2,
          underline: Container(
            height: 2,
            color: MoralarColors.brownishGrey,
          ),
          isExpanded: true,
          onChanged: readOnly ? null : onChangedKinship,
          items: kinships.map<DropdownMenuItem<String>>((value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
        const SizedBox(height: 32),
        Container(
          alignment: Alignment.topLeft,
          child: Text(
            'Escolaridade',
            style: textTheme.headline3?.copyWith(
              color: MoralarColors.brownishGrey,
            ),
          ),
        ),
        DropdownButton<String>(
          hint: Text(
            school,
            style: textTheme.bodyText2,
          ),
          icon: const Icon(FontAwesomeIcons.angleDown),
          elevation: 16,
          style: textTheme.bodyText2,
          underline: Container(
            height: 2,
            color: MoralarColors.brownishGrey,
          ),
          isExpanded: true,
          onChanged: onChangedSchool,
          items: schoolTypes.map<DropdownMenuItem<String>>((value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
        const SizedBox(height: 32),
      ],
    );
  }
}

class Family {
  static String statusName(int status) {
    if (status == 0) {
      return 'Visita do TTS';
    } else if (status == 1) {
      return 'Reunião com TTS';
    } else if (status == 2) {
      return 'Reunião PGM';
    } else if (status == 3) {
      return 'Visita ao imóvel';
    } else if (status == 4) {
      return 'Escolha do imóvel';
    } else if (status == 5) {
      return 'Demolição';
    } else if (status == 6) {
      return 'Outros';
    } else if (status == 7) {
      return 'Mudança';
    } else if (status == 8) {
      return 'Acompanhamento pós-mudança';
    } else {
      return '';
    }
  }

  static Color statusColor(int status) {
    if (status == 2) {
      return MoralarColors.strawberry;
    } else if (status == 4) {
      return MoralarColors.blue;
    } else if (status == 7) {
      return MoralarColors.orangeYellow;
    } else if (status == 8) {
      return MoralarColors.kellyGreen;
    } else {
      return Colors.white;
    }
  }
}
