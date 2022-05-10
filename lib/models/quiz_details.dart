part of moralar_widgets;

@HiveType(typeId: 0)
@JsonSerializable()
class QuizDetails extends HiveObject {

  @HiveField(0)
  String title;

  @HiveField(1)
  int typeQuiz;

  @HiveField(2)
  List<QuestionResponse> questionViewModel;

  @HiveField(3)
  String id;

  @HiveField(4)
  int created;

  QuizDetails({
    required this.title,
    required this.typeQuiz,
    required this.questionViewModel,
    required this.id,
    required this.created,
  });

  factory QuizDetails.fromJson(Map<String, dynamic> json) {
    return _$QuizDetailsFromJson(json);
  }

  Map<String, dynamic> toJson() => _$QuizDetailsToJson(this);
}
