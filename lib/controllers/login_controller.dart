part of moralar_widgets;

class LoginController extends GetxController {
  final checked = false.obs;
  final credentials = DocumentCredentials(cpf: '', password: '');

  LoginController() {
    MegaFlutter.instance.auth.userChanges.listen((user) {
      print('usuário ${user != null ? 'autenticado' : 'não autenticado'}');
    });
  }

  Future<void> signIn() async {
    await MegaFlutter.instance.auth.signIn(credentials);
  }
}
