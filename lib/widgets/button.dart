part of moralar_widgets;

class MoralarButton extends StatelessWidget {
  final Color? color;
  final Widget child;
  final VoidCallback onPressed;
  final bool isLoading;

  const MoralarButton({
    required this.child,
    required this.onPressed,
    this.color,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.all(8),
        height: 48,
        width: double.infinity,
        color: color ?? Theme.of(context).primaryColor,
        child: isLoading
            ? Container(
                padding: const EdgeInsets.symmetric(vertical: 4),
                alignment: Alignment.center,
                child: const CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                      MoralarColors.veryLightPink),
                  strokeWidth: 3,
                ),
              )
            : child,
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
