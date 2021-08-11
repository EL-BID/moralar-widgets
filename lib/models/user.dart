part of moralar_widgets;

@JsonSerializable()
class MoralarUser extends User {
  final String email;

  @JsonKey(name: 'cpf')
  final String document;

  MoralarUser({
    required String name,
    required this.document,
    required this.email,
  }) : super(name: name);

  factory MoralarUser.fromJson(Map<String, dynamic> json) {
    return _$MoralarUserFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() => _$MoralarUserToJson(this);
}
