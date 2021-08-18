part of moralar_widgets;

@JsonSerializable()
class FamilyMember {
  String name;
  int birthday;
  int? genre;
  int kinShip;
  int? scholarity;

  FamilyMember({
    required this.name,
    required this.birthday,
    this.genre = -1,
    required this.kinShip,
    this.scholarity = -1,
  });

  factory FamilyMember.fromJson(Map<String, dynamic> json) {
    return _$FamilyMemberFromJson(json);
  }

  Map<String, dynamic> toJson() => _$FamilyMemberToJson(this);
}
