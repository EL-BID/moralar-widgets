part of moralar_widgets;

@JsonSerializable()
class Match {
  String id;
  String familyId;
  String residencialPropertyId;
  String holderName;
  String holderEmail;
  String holderCpf;
  String holderNumber;
  String residencialCode;
  int interest;
  Address residencialPropertyAdress;

  Match({
    required this.id,
    required this.familyId,
    required this.residencialPropertyId,
    required this.holderName,
    required this.holderEmail,
    required this.holderCpf,
    required this.holderNumber,
    required this.residencialCode,
    required this.interest,
    required this.residencialPropertyAdress,
  });

  factory Match.fromJson(Map<String, dynamic> json) {
    return _$MatchFromJson(json);
  }

  Map<String, dynamic> toJson() => _$MatchToJson(this);
}
