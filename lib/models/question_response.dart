part of moralar_widgets;

@HiveType(typeId: 1)
@JsonSerializable()
class QuestionResponse {

  @HiveField(0)
  String nameQuestion;

  @HiveField(1)
  int typeResponse;

  @HiveField(2)
  List<Description> description;

  @HiveField(3)
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
