part of moralar_widgets;

@JsonSerializable()
class Video {
  int created;
  String thumbnail;
  String title;
  String url;
  bool? blocked;
  String id;
  Video({
    required this.created,
    required this.thumbnail,
    required this.title,
    required this.url,
    this.blocked,
    required this.id,
  });

  factory Video.fromJson(Map<String, dynamic> json) {
    return _$VideoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$VideoToJson(this);
}
