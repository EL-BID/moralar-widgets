part of moralar_widgets;

@HiveType(typeId: 2)
@JsonSerializable()
class Description {

  @HiveField(0)
  String description;

  @HiveField(1)
  String id;

  Description({
    required this.description,
    required this.id,
  });

  factory Description.fromJson(Map<String, dynamic> json) {
    return _$DescriptionFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DescriptionToJson(this);
}
