part of moralar_widgets;

@HiveType(typeId: 6)
@JsonSerializable()
class ScheduleDetails {

  @HiveField(0)
  int? date;

  @HiveField(1)
  String? place;

  @HiveField(2)
  String? description;

  @HiveField(3)
  String? familyId;

  @HiveField(4)
  String? holderNumber;

  @HiveField(5)
  String? holderCpf;

  @HiveField(6)
  int? typeSubject;

  @HiveField(7)
  int? typeScheduleStatus;

  @HiveField(8)
  String id;

  ScheduleDetails({
    this.date,
    this.place,
    this.description,
    required this.familyId,
    this.holderNumber,
    this.holderCpf,
    this.typeScheduleStatus,
    this.typeSubject,
    required this.id,
  });

  factory ScheduleDetails.fromJson(Map<String, dynamic> json) {
    return _$ScheduleDetailsFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ScheduleDetailsToJson(this);
}
