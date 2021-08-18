part of moralar_widgets;

class RecoveryPasswordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RecoveryPasswordController>(
      () => RecoveryPasswordController(),
    );
    Get.lazyPut<PasswordProvider>(
      () => PasswordProvider(),
    );
  }
}
