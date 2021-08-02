part of moralar_widgets;

class DefaultButton extends StatelessWidget {
  final Color? color;
  final Widget child;
  DefaultButton({required this.child, this.color});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height: 48,
        width: double.infinity,
        color: color ?? Theme.of(context).primaryColor,
        child: child,
      ),
    );
  }
}
