part of moralar_widgets;

@JsonSerializable()
class MoralarUser extends User {
  final String cpf;
  String email;

  MoralarUser({
    required String name,
    required this.cpf,
    required this.email,
  }) : super(name: name);

  factory MoralarUser.fromJson(Map<String, dynamic> json) {
    return _$MoralarUserFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() => _$MoralarUserToJson(this);
}
