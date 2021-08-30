part of moralar_widgets;

@JsonSerializable()
class QuizDetails {
  String title;
  int typeQuiz;
  List<QuestionResponse> questionViewModel;
  String id;

  QuizDetails({
    required this.title,
    required this.typeQuiz,
    required this.questionViewModel,
    required this.id,
  });

  factory QuizDetails.fromJson(Map<String, dynamic> json) {
    return _$QuizDetailsFromJson(json);
  }

  Map<String, dynamic> toJson() => _$QuizDetailsToJson(this);
}
