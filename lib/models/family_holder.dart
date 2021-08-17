part of moralar_widgets;

@JsonSerializable()
class FamilyHolder extends MoralarUser {
  String? number;
  int? birthday;
  int? genre;
  String? phone;
  int? scholarity;
  FamilyHolder(
      {required String cpf,
      required String email,
      required String name,
      this.number,
      this.birthday,
      this.genre,
      this.phone,
      this.scholarity})
      : super(
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
