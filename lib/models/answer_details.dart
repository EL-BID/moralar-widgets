part of moralar_widgets;

@JsonSerializable()
class AnswerDetails {
  String title;
  String question;
  int typeResponse;
  List<String> answers;

  AnswerDetails({
    required this.title,
    required this.question,
    required this.typeResponse,
    required this.answers,
  });

  factory AnswerDetails.fromJson(Map<String, dynamic> json) {
    return _$AnswerDetailsFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AnswerDetailsToJson(this);
}
