part of moralar_widgets;

@JsonSerializable()
class MoralarNotification {
  bool status;
  int created;
  String title;
  String description;
  String? image;
  String id;

  MoralarNotification({
    required this.status,
    required this.created,
    required this.title,
    required this.description,
    this.image,
    required this.id,
  });

  factory MoralarNotification.fromJson(Map<String, dynamic> json) {
    return _$MoralarNotificationFromJson(json);
  }

  Map<String, dynamic> toJson() => _$MoralarNotificationToJson(this);
}
