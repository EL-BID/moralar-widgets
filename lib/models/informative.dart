part of moralar_widgets;

@JsonSerializable()
class Informative {
  String informativeId;
  String? datePublish;
  String? image;
  String? description;
  int? dateViewed;
  String id;

  Informative({
    required this.informativeId,
    required this.datePublish,
    required this.image,
    required this.description,
    this.dateViewed = 0,
    required this.id,
  });

  factory Informative.fromJson(Map<String, dynamic> json) {
    return _$InformativeFromJson(json);
  }

  Map<String, dynamic> toJson() => _$InformativeToJson(this);
}
