part of moralar_widgets;

@HiveType(typeId: 5)
@JsonSerializable()
class FamilyTTS {

  @HiveField(0)
  String id;

  @HiveField(1)
  String place;

  @HiveField(2)
  String description;

  @HiveField(3)
  String familyId;

  @HiveField(4)
  String holderNumber;

  @HiveField(5)
  String holderName;

  @HiveField(6)
  String holderCpf;

  @HiveField(7)
  int date;

  @HiveField(8)
  int typeSubject;

  @HiveField(9)
  int typeScheduleStatus;

  @HiveField(10)
  bool? canNextStage;

  @HiveField(11)
  List<Quiz>? detailQuiz;

  @HiveField(12)
  List<Quiz>? detailEnquete;

  @HiveField(13)
  List<CourseTTS>? courses;

  @HiveField(14)
  List<Property>? interestResidencialProperty;

  @HiveField(15)
  List<ScheduleDetails>? schedules;

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
    this.canNextStage,
    this.detailQuiz,
    this.detailEnquete,
    this.courses,
    this.interestResidencialProperty,
    this.schedules,
  });

  factory FamilyTTS.fromJson(Map<String, dynamic> json) {
    return _$FamilyTTSFromJson(json);
  }

  Map<String, dynamic> toJson() => _$FamilyTTSToJson(this);
}
