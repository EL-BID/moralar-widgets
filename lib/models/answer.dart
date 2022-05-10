part of moralar_widgets;

@HiveType(typeId: 4)
@JsonSerializable()
class Answer {

  @HiveField(0)
  List<String>? questionDescriptionId;

  @HiveField(1)
  String? questionId;

  @HiveField(2)
  String? answerDescription;

  @HiveField(3)
  String? id;

  Answer({
    this.questionDescriptionId,
    this.questionId,
    this.answerDescription,
    this.id,
  });

  factory Answer.fromJson(Map<String, dynamic> json) {
    return _$AnswerFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AnswerToJson(this);
}
