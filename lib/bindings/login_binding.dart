part of moralar_widgets;

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(
      () => LoginController(),
    );
    Get.lazyPut<FamilyProvider>(
      () => FamilyProvider(),
    );
  }
}
