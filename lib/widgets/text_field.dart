part of moralar_widgets;

class MoralarTextField extends StatelessWidget {
  final String? label;
  final String? hint;
  final TextInputType? keyboard;
  final List<TextInputFormatter>? formats;
  final List<String? Function(String?)>? validators;
  final bool? isPassword;
  final int? maxLenght;
  final TextStyle? style;
  final Color? color;
  final int? maxLines;
  final Function(String?)? onSaved;
  const MoralarTextField({
    this.label,
    this.hint,
    this.keyboard,
    this.formats,
    this.validators,
    this.isPassword,
    this.maxLenght,
    this.style,
    this.color,
    this.maxLines,
    this.onSaved,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: label ?? '',
        hintText: hint ?? '',
        counterText: '',
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: color ?? const Color(4278190080),
          ),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: color ?? const Color(4278190080),
          ),
        ),
        hintStyle: style,
        labelStyle: style,
      ),
      maxLines: maxLines ?? 1,
      textInputAction: TextInputAction.done,
      style: style,
      maxLength: maxLenght,
      keyboardType: keyboard,
      inputFormatters: formats ?? [],
      validator: Validatorless.multiple(validators ?? []),
      obscureText: isPassword ?? false,
      obscuringCharacter: '*',
      onSaved: onSaved,
    );
  }
}

class RowTextField extends StatelessWidget {
  final List<Widget> textFields;

  const RowTextField({
    required this.textFields,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
        children: List.generate(textFields.length, (index) {
      return Flexible(
        child: Container(
            padding: EdgeInsets.only(right: index % 2 == 0 ? 24 : 0),
            child: textFields[index]),
      );
    }));
  }
}
