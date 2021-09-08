part of moralar_widgets;

class LoginBinding extends Bindings {
  final VoidCallback onSignedIn;
  final VoidCallback recoveryPassword;
  final String firstAccess;

  LoginBinding({
    required this.onSignedIn,
    required this.recoveryPassword,
    this.firstAccess = '',
  });

  @override
  void dependencies() {
    Get.lazyPut<LoginController>(
      () => LoginController(
        onSignedIn: onSignedIn,
        recoveryPassword: recoveryPassword,
        firstAccess: firstAccess,
      ),
    );
    Get.lazyPut<FamilyProvider>(
      () => FamilyProvider(),
    );
  }
}
