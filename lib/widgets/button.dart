part of moralar_widgets;

class MoralarButton extends StatelessWidget {
  final Color? color;
  final Widget child;
  final Function()? function;

  const MoralarButton({required this.child, this.function, this.color});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: function ?? () {},
      child: Container(
        padding: const EdgeInsets.all(8),
        height: 48,
        width: double.infinity,
        color: color ?? Theme.of(context).primaryColor,
        child: child,
      ),
    );
  }
}

class MoralarOutlinedButton extends StatelessWidget {
  final Color? color;
  final Widget child;
  final Function()? function;

  const MoralarOutlinedButton({required this.child, this.function, this.color});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: function ?? () {},
      child: Container(
        padding: const EdgeInsets.all(8),
        height: 48,
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(
            color: color ?? Theme.of(context).primaryColor,
            width: 2,
          ),
        ),
        child: child,
      ),
    );
  }
}
