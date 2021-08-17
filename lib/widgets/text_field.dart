part of moralar_widgets;

class MoralarTextField extends StatelessWidget {
  final String? label;
  final String? hint;
  final TextEditingController? controller;
  final TextInputType? keyboard;
  final List<TextInputFormatter>? formats;
  final List<String? Function(String?)>? validators;
  final bool? isPassword;
  final int? maxLenght;
  final TextStyle? labelStyle;
  final TextStyle? hintStyle;
  final Color? color;
  final int? maxLines;
  final Function(String?)? onSaved;
  final bool? readOnly;
  final Widget? prefixIcon;
  const MoralarTextField({
    this.label,
    this.hint,
    this.controller,
    this.keyboard,
    this.formats,
    this.validators,
    this.isPassword,
    this.maxLenght,
    this.labelStyle,
    this.hintStyle,
    this.color,
    this.maxLines,
    this.onSaved,
    this.readOnly,
    this.prefixIcon,
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
        hintStyle: hintStyle,
        labelStyle: labelStyle,
        prefixIcon: prefixIcon,
      ),
      controller: controller,
      maxLines: maxLines ?? 1,
      readOnly: readOnly ?? false,
      textInputAction: TextInputAction.done,
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
