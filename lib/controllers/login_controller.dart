part of moralar_widgets;

class LoginController extends GetxController {
  final checked = false.obs;
  final credentials = DocumentCredentials(cpf: '', password: '');

  LoginController() {
    MegaFlutter.instance.auth.userChanges.listen((user) {
      user as MoralarUser?;
      print('usuário ${user != null ? 'autenticado' : 'não autenticado'}');
      print(user?.token.refreshToken);
      print(user?.document);
    });
  }

  Future<void> signIn() async {
    await MegaFlutter.instance.auth.signIn(credentials);
  }
}
