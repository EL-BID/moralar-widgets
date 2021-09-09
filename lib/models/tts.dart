part of moralar_widgets;

@JsonSerializable()
class TTS extends MoralarUser {
  String jobPost;
  String? phone;
  String id;
  TTS({
    this.phone,
    required this.id,
    required this.jobPost,
    required String name,
    required String cpf,
    required String email,
  }) : super(
          name: name,
          email: email,
          cpf: cpf,
        );

  factory TTS.fromJson(Map<String, dynamic> json) {
    return _$TTSFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() => _$TTSToJson(this);
}
