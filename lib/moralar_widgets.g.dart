// GENERATED CODE - DO NOT MODIFY BY HAND

part of moralar_widgets;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FamilyHolder _$FamilyHolderFromJson(Map<String, dynamic> json) {
  return FamilyHolder(
    cpf: json['cpf'] as String,
    email: json['email'] as String,
    name: json['name'] as String,
    number: json['number'] as String?,
    birthday: json['birthday'] as int?,
    genre: json['genre'] as int?,
    phone: json['phone'] as String?,
    scholarity: json['scholarity'] as int?,
  );
}

Map<String, dynamic> _$FamilyHolderToJson(FamilyHolder instance) =>
    <String, dynamic>{
      'name': instance.name,
      'cpf': instance.cpf,
      'email': instance.email,
      'number': instance.number,
      'birthday': instance.birthday,
      'genre': instance.genre,
      'phone': instance.phone,
      'scholarity': instance.scholarity,
    };

TTS _$TTSFromJson(Map<String, dynamic> json) {
  return TTS(
    name: json['name'] as String,
    cpf: json['cpf'] as String,
    email: json['email'] as String,
  );
}

Map<String, dynamic> _$TTSToJson(TTS instance) => <String, dynamic>{
      'name': instance.name,
      'cpf': instance.cpf,
      'email': instance.email,
    };

MoralarUser _$MoralarUserFromJson(Map<String, dynamic> json) {
  return MoralarUser(
    name: json['name'] as String,
    cpf: json['cpf'] as String,
    email: json['email'] as String,
  );
}

Map<String, dynamic> _$MoralarUserToJson(MoralarUser instance) =>
    <String, dynamic>{
      'name': instance.name,
      'cpf': instance.cpf,
      'email': instance.email,
    };
