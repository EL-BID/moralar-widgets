part of moralar_widgets;

class LoginCheckBox extends StatelessWidget {
  final Function()? function;
  final bool checked;
  const LoginCheckBox({
    this.function,
    required this.checked,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: function!,
      child: Container(
        padding: const EdgeInsets.all(4),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          border: Border.all(color: MoralarColors.kellyGreen),
          color: checked ? MoralarColors.kellyGreen : Colors.white,
        ),
        child: Container(
          alignment: Alignment.center,
          child: const FaIcon(
            FontAwesomeIcons.check,
            color: Colors.white,
            size: 16,
          ),
        ),
      ),
    );
  }
}

class InformativeCheckBox extends StatelessWidget {
  final bool checked;
  const InformativeCheckBox({
    required this.checked,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 16,
      width: 16,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border.all(
          color:
              checked ? MoralarColors.algaeGreen : MoralarColors.brownishGrey,
          width: 2,
        ),
        color: checked ? MoralarColors.algaeGreen : Colors.white,
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
          color: checked ? MoralarColors.algaeGreen : Colors.white,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
