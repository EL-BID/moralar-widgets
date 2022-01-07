part of moralar_widgets;

@JsonSerializable()
class FamilyHolder extends MoralarUser {
  String number;
  int birthday;
  int? genre;
  String? phone;
  int? scholarity;
  String? id;
  bool? isFirstAcess;

  FamilyHolder({
    required String cpf,
    String? email = "",
    required String name,
    this.number = '',
    this.birthday = 0,
    this.genre = -1,
    this.phone = '',
    this.scholarity = -1,
    this.id = '',
    this.isFirstAcess = true,
  }) : super(
          name: name,
          email: email ?? "",
          cpf: cpf,
        );

  factory FamilyHolder.fromJson(Map<String, dynamic> json) {
    return _$FamilyHolderFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() => _$FamilyHolderToJson(this);
}
