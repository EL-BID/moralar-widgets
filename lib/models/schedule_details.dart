part of moralar_widgets;

@JsonSerializable()
class ScheduleDetails {
  int? date;
  String? place;
  String? description;
  String familyId;
  String? holderNumber;
  String? holderCpf;
  int? typeSubject;
  int? typeScheduleStatus;
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
