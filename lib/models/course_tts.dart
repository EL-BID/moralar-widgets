part of moralar_widgets;

@JsonSerializable()
class CourseTTS {
  String title;
  int startDate;
  int endDate;
  String? schedule;
  int typeStatusCourse;
  String id;

  CourseTTS({
    required this.title,
    required this.startDate,
    required this.endDate,
    this.schedule,
    required this.typeStatusCourse,
    required this.id,
  });

  factory CourseTTS.fromJson(Map<String, dynamic> json) {
    return _$CourseTTSFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CourseTTSToJson(this);
}
