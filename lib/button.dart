part of moralar_widgets;

class DefaultButton extends StatelessWidget {
  final Color? color;
  final Widget child;
  final Function()? function;
  DefaultButton({required this.child, this.function, this.color});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: function ?? () {},
      child: Container(
        height: 48,
        width: double.infinity,
        color: color ?? Theme.of(context).primaryColor,
        child: child,
      ),
    );
  }
}
