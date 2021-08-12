part of moralar_widgets;

@JsonSerializable()
class FamilyHolder extends MoralarUser {
  FamilyHolder({
    required String cpf,
    required String email,
    required String name,
  }) : super(
          name: name,
          email: email,
          cpf: cpf,
        );

  factory FamilyHolder.fromJson(Map<String, dynamic> json) {
    return _$FamilyHolderFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() => _$FamilyHolderToJson(this);
}
