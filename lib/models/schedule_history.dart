part of moralar_widgets;

@JsonSerializable()
class ScheduleHistory {
  int? date;
  String scheduleId;
  int? typeScheduleStatus;
  String id;

  ScheduleHistory({
    this.date,
    required this.scheduleId,
    this.typeScheduleStatus,
    required this.id,
  });

  factory ScheduleHistory.fromJson(Map<String, dynamic> json) {
    return _$ScheduleHistoryFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ScheduleHistoryToJson(this);
}
