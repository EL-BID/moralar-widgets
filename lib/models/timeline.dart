part of moralar_widgets;

@JsonSerializable()
class Timeline {
  List<ScheduleHistory> data;

  Timeline({
    required this.data,
  });

  factory Timeline.fromJson(Map<String, dynamic> json) {
    return _$TimelineFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TimelineToJson(this);
}
