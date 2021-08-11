part of moralar_widgets;

class FamilyForm extends StatelessWidget {
  final int index;
  final int genderFamily;
  final Function(int?)? onChangedRadio;
  final String schoolFamily;
  final Function(String?)? onChangedSchool;
  final List<String> schoolTypes;

  const FamilyForm({
    required this.index,
    required this.genderFamily,
    this.onChangedRadio,
    required this.schoolFamily,
    this.onChangedSchool,
    required this.schoolTypes,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
      children: [
        Text(
          'Dados do ${_titleType(index)}',
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
          label: 'Nome do ${_textFieldType(index)}',
          color: MoralarColors.waterBlue,
          controller: TextEditingController(text: 'Membro da Familia'),
          readOnly: true,
          style: textTheme.bodyText1
              ?.copyWith(color: MoralarColors.waterBlue, fontSize: 16),
        ),
        const SizedBox(height: 16),
        MoralarTextField(
          label: 'Data de Nascimento',
          controller: TextEditingController(text: 'DD/MM/AAAA'),
          readOnly: true,
          color: MoralarColors.waterBlue,
          style: textTheme.bodyText1
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
              value: 1,
              groupValue: genderFamily,
              onChanged: onChangedRadio!,
              contentPadding: EdgeInsets.zero,
              title: Text('Masculino', style: textTheme.bodyText2),
            ),
            RadioListTile(
              value: 2,
              groupValue: genderFamily,
              onChanged: onChangedRadio!,
              contentPadding: EdgeInsets.zero,
              title: Text('Feminino', style: textTheme.bodyText2),
            ),
            RadioListTile(
              value: 3,
              groupValue: genderFamily,
              onChanged: onChangedRadio!,
              contentPadding: EdgeInsets.zero,
              title: Text('Outro', style: textTheme.bodyText2),
            ),
          ],
        ),
        const SizedBox(height: 32),
        Visibility(
          visible: index > 0,
          child: Column(
            children: [
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
                  'Filho',
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
                // onChanged: (s) {
                //   controller.schoolHint.value = s!;
                // },
                items: const [],
                // items: controller.schoolTypes
                //     .map<DropdownMenuItem<String>>((value) {
                //   return DropdownMenuItem<String>(
                //     value: value,
                //     child: Text(value),
                //   );
                // }).toList(),
              ),
              const SizedBox(height: 32),
            ],
          ),
        ),
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
            schoolFamily,
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

String _titleType(index) {
  if (index == 0) {
    return 'Cônjuge';
  } else {
    return 'Familiar';
  }
}

String _textFieldType(index) {
  if (index == 0) {
    return 'Cônjuge';
  } else {
    return 'Membro';
  }
}
