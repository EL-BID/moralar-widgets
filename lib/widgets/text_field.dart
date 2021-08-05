part of moralar_widgets;

class MoralarTextField extends StatelessWidget {
  final String? label;
  final String? hint;
  final TextInputType? keyboard;
  final List<TextInputFormatter>? formats;
  final List<String? Function(String?)>? validators;
  final bool? isPassword;
  const MoralarTextField({
    this.label,
    this.hint,
    this.keyboard,
    this.formats,
    this.validators,
    this.isPassword,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: label ?? '',
        hintText: hint ?? '',
      ),
      keyboardType: keyboard,
      inputFormatters: formats ?? [],
      validator: Validatorless.multiple(validators ?? []),
      obscureText: isPassword ?? false,
      obscuringCharacter: '*',
    );
  }
}
