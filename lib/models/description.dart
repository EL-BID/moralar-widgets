part of moralar_widgets;

@JsonSerializable()
class Description {
  String description;
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
