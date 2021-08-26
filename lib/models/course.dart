part of moralar_widgets;

@JsonSerializable()
class Course {
  String title;
  String? img;
  int startDate;
  int endDate;
  String schedule;
  String? place;
  String? workLoad;
  String? description;
  int startTargetAudienceAge;
  int endTargetAudienceAge;
  int? typeGenre;
  int? numberOfVacancies;
  bool isSubscribed;
  String id;
  Course({
    required this.title,
    this.img,
    required this.startDate,
    required this.endDate,
    required this.schedule,
    this.place,
    this.workLoad,
    this.description,
    required this.startTargetAudienceAge,
    required this.endTargetAudienceAge,
    this.typeGenre,
    this.numberOfVacancies,
    required this.isSubscribed,
    required this.id,
  });

  factory Course.fromJson(Map<String, dynamic> json) {
    return _$CourseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CourseToJson(this);
}
