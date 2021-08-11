part of moralar_widgets;

class LoginController extends GetxController {
  final checked = false.obs;

  DocumentCredentials login = DocumentCredentials(cpf: '', password: '');

  Future<void> signIn() async {
    await MegaFlutter.instance.auth.signIn(login);

    print(MegaFlutter.instance.auth.currentUser!.name);
  }
}
