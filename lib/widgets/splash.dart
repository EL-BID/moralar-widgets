part of moralar_widgets;

class SplashScreen extends StatefulWidget {
  final Duration delay;
  final VoidCallback onDelayCompleted;

  const SplashScreen({
    required this.onDelayCompleted,
    this.delay = const Duration(seconds: 3),
  });

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _setStatusBarVisible(false);
    _waitDelay();
  }

  @override
  void dispose() {
    super.dispose();
    _setStatusBarVisible(true);
  }

  void _setStatusBarVisible(bool isVisible) {
    if (isVisible) {
      SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
    } else {
      SystemChrome.setEnabledSystemUIOverlays([]);
    }
  }

  Future<void> _waitDelay() async {
    await Future.delayed(widget.delay);
    widget.onDelayCompleted();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: MoralarColors.veryLightPink,
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 48),
      child: MoralarImage.asset(Assets.images.appLogo),
    );
  }
}
