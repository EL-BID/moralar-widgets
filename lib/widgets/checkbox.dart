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
          border: Border.all(color: Assets.colors.kellyGreen),
          color: checked ? Assets.colors.kellyGreen : Colors.white,
        ),
        child: const Center(
          child: FaIcon(
            FontAwesomeIcons.check,
            color: Colors.white,
            size: 16,
          ),
        ),
      ),
    );
  }
}
