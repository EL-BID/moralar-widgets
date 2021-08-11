part of moralar_widgets;

class DocumentCredentials extends Credentials {
  String cpf;
  String password;
  UserType userType;

  DocumentCredentials({
    required this.cpf,
    required this.password,
    this.userType = UserType.family,
  });
}
