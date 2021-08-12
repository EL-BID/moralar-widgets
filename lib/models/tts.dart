part of moralar_widgets;

@JsonSerializable()
class TTS extends MoralarUser {
  TTS({
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
