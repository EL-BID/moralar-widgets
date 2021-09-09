part of moralar_widgets;

@JsonSerializable()
class FamilyTTS {
  String id;
  int created;
  String number;
  String name;
  String cpf;
  int? birthday;
  int genre;
  String email;
  String phone;
  int scholarity;
  int typeSubject;
  int typeScheduleStatus;

  FamilyTTS({
    required this.id,
    required this.created,
    required this.number,
    required this.name,
    required this.cpf,
    this.birthday,
    required this.genre,
    required this.email,
    required this.phone,
    required this.scholarity,
    required this.typeSubject,
    required this.typeScheduleStatus,
  });

  factory FamilyTTS.fromJson(Map<String, dynamic> json) {
    return _$FamilyTTSFromJson(json);
  }

  Map<String, dynamic> toJson() => _$FamilyTTSToJson(this);
}
