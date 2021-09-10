part of moralar_widgets;

@JsonSerializable()
class FamilyTTS {
  String id;
  String place;
  String description;
  String familyId;
  String holderNumber;
  String holderName;
  String holderCpf;
  int date;
  int typeSubject;
  int typeScheduleStatus;

  FamilyTTS({
    required this.id,
    required this.place,
    required this.description,
    required this.familyId,
    required this.holderNumber,
    required this.holderName,
    required this.holderCpf,
    required this.date,
    required this.typeSubject,
    required this.typeScheduleStatus,
  });

  factory FamilyTTS.fromJson(Map<String, dynamic> json) {
    return _$FamilyTTSFromJson(json);
  }

  Map<String, dynamic> toJson() => _$FamilyTTSToJson(this);
}
