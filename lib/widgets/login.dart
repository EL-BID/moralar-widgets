part of moralar_widgets;

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultScaffold(
      title: 'Login',
      leading: Container(),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 64),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 52,
              child: MoralarImage.asset(Assets.images.appLogo),
            ),
            const SizedBox(height: 64),
          ],
        ),
      ),
    );
  }
}
