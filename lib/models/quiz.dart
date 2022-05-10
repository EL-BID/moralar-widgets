part of moralar_widgets;

@HiveType(typeId: 3)
@JsonSerializable()
class Quiz {

  @HiveField(0)
  String title;

  @HiveField(1)
  int typeQuiz;

  @HiveField(2)
  String? familyId;

  @HiveField(3)
  String? quizId;

  @HiveField(4)
  String? holderName;

  @HiveField(5)
  String? holderNumber;

  @HiveField(6)
  String? holderCpf;

  @HiveField(7)
  bool? questionRegister;

  @HiveField(8)
  int created;

  @HiveField(9)
  int typeStatus;

  @HiveField(10)
  String id;

  Quiz({
    required this.title,
    required this.typeQuiz,
    this.familyId,
    this.quizId,
    this.holderName,
    this.holderNumber,
    this.holderCpf,
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
