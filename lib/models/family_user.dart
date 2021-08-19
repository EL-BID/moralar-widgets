part of moralar_widgets;

@JsonSerializable()
class FamilyUser {
  FamilyHolder holder;
  Spouse spouse;
  List<FamilyMember> members;
  String? motherName;
  String? motherCityBorned;
  String id;
  bool? isFirstAcess;

  FamilyUser({
    required this.holder,
    required this.spouse,
    required this.members,
    this.motherName,
    this.motherCityBorned,
    required this.id,
    this.isFirstAcess,
  });

  factory FamilyUser.fromJson(Map<String, dynamic> json) {
    return _$FamilyUserFromJson(json);
  }

  Map<String, dynamic> toJson() => _$FamilyUserToJson(this);
}
