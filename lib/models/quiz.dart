part of moralar_widgets;

@JsonSerializable()
class Quiz {
  String title;
  int typeQuiz;
  String? familyId;
  String? quizId;
  bool? questionRegister;
  int created;
  int typeStatus;
  String id;

  Quiz({
    required this.title,
    required this.typeQuiz,
    this.familyId,
    this.quizId,
    this.questionRegister,
    required this.created,
    required this.typeStatus,
    required this.id,
  });

  factory Quiz.fromJson(Map<String, dynamic> json) {
    return _$QuizFromJson(json);
  }

  Map<String, dynamic> toJson() => _$QuizToJson(this);
}
