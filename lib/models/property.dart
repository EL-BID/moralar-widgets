part of moralar_widgets;

@JsonSerializable()
class Property {
  String? code;
  List<String>? photo;
  String? project;
  bool? blocked;
  Address residencialPropertyAdress;
  PropertyFeatures residencialPropertyFeatures;
  String id;

  Property({
    this.code,
    this.photo,
    this.project,
    this.blocked,
    required this.residencialPropertyAdress,
    required this.residencialPropertyFeatures,
    required this.id,
  });

  factory Property.fromJson(Map<String, dynamic> json) {
    return _$PropertyFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PropertyToJson(this);
}
