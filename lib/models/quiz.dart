part of moralar_widgets;

@JsonSerializable()
class Quiz {
  String title;
  int typeQuiz;
  bool? questionRegister;
  int created;
  int typeStatus;
  String id;

  Quiz({
    required this.title,
    required this.typeQuiz,
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
