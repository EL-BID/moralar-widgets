part of moralar_widgets;

class LoginController extends GetxController {
  final checked = false.obs;
  final credentials = DocumentCredentials(cpf: '', password: '');

  Future<void> signIn() async {
    await MegaFlutter.instance.auth.signIn(credentials);
  }
}
