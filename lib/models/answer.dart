part of moralar_widgets;

@JsonSerializable()
class Answer {
  List<String>? questionDescriptionId;
  String? questionId;
  String? answerDescription;
  String? familyId;
  String? responsibleForResponsesId;
  String? id;

  Answer({
    this.questionDescriptionId,
    this.questionId,
    this.answerDescription,
    this.familyId,
    this.responsibleForResponsesId,
    this.id,
  });

  factory Answer.fromJson(Map<String, dynamic> json) {
    return _$AnswerFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AnswerToJson(this);
}
