part of moralar_widgets;

@JsonSerializable()
class AnswerDetails {
  String title;
  String question;
  int typeResponse;
  int? date;
  List<String> answers;
  String? familyNumber;
  String? familyHolderName;
  String? familyHolderCpf;

  AnswerDetails({
    required this.title,
    required this.question,
    required this.typeResponse,
    this.date,
    required this.answers,
    this.familyNumber,
    this.familyHolderName,
    this.familyHolderCpf,
  });

  factory AnswerDetails.fromJson(Map<String, dynamic> json) {
    return _$AnswerDetailsFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AnswerDetailsToJson(this);
}
