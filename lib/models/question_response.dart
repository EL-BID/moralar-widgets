part of moralar_widgets;

@JsonSerializable()
class QuestionResponse {
  String nameQuestion;
  int typeResponse;
  List<Description> description;
  String id;

  QuestionResponse({
    required this.nameQuestion,
    required this.typeResponse,
    required this.description,
    required this.id,
  });

  factory QuestionResponse.fromJson(Map<String, dynamic> json) {
    return _$QuestionResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$QuestionResponseToJson(this);
}
