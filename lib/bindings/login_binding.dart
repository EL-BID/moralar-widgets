part of moralar_widgets;

class LoginBinding extends Bindings {
  final VoidCallback onSignedIn;
  final VoidCallback recoveryPassword;
  final String firstAccess;
  final String terms;

  LoginBinding({
    required this.onSignedIn,
    required this.recoveryPassword,
    this.firstAccess = '',
    this.terms = '',
  });

  @override
  void dependencies() {
    Get.lazyPut<LoginController>(
      () => LoginController(
        onSignedIn: onSignedIn,
        recoveryPassword: recoveryPassword,
        firstAccess: firstAccess,
        terms: terms,
      ),
    );
    Get.lazyPut<FamilyProvider>(
      () => FamilyProvider(),
    );
  }
}
