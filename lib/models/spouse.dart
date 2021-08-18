part of moralar_widgets;

@JsonSerializable()
class Spouse {
  String name;
  int birthday;
  int? genre;
  int? scholarity;

  Spouse({
    required this.name,
    required this.birthday,
    this.genre = -1,
    this.scholarity = -1,
  });

  factory Spouse.fromJson(Map<String, dynamic> json) {
    return _$SpouseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SpouseToJson(this);
}
