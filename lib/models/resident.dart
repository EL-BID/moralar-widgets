part of moralar_widgets;

@JsonSerializable()
class Resident extends MoralarUser {
  Resident({
    required String cpf,
    required String email,
    required String name,
  }) : super(
          name: name,
          email: email,
          cpf: cpf,
        );

  factory Resident.fromJson(Map<String, dynamic> json) {
    return _$ResidentFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() => _$ResidentToJson(this);
}
