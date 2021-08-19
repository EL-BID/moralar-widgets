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
    number: json['number'] as String,
    birthday: json['birthday'] as int,
    genre: json['genre'] as int?,
    phone: json['phone'] as String,
    scholarity: json['scholarity'] as int?,
    id: json['id'] as String?,
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
      'id': instance.id,
    };

FamilyMember _$FamilyMemberFromJson(Map<String, dynamic> json) {
  return FamilyMember(
    name: json['name'] as String,
    birthday: json['birthday'] as int,
    genre: json['genre'] as int?,
    kinShip: json['kinShip'] as int,
    scholarity: json['scholarity'] as int?,
  );
}

Map<String, dynamic> _$FamilyMemberToJson(FamilyMember instance) =>
    <String, dynamic>{
      'name': instance.name,
      'birthday': instance.birthday,
      'genre': instance.genre,
      'kinShip': instance.kinShip,
      'scholarity': instance.scholarity,
    };

FamilyUser _$FamilyUserFromJson(Map<String, dynamic> json) {
  return FamilyUser(
    holder: FamilyHolder.fromJson(json['holder'] as Map<String, dynamic>),
    spouse: Spouse.fromJson(json['spouse'] as Map<String, dynamic>),
    members: (json['members'] as List<dynamic>)
        .map((e) => FamilyMember.fromJson(e as Map<String, dynamic>))
        .toList(),
    motherName: json['motherName'] as String?,
    motherCityBorned: json['motherCityBorned'] as String?,
    id: json['id'] as String,
  );
}

Map<String, dynamic> _$FamilyUserToJson(FamilyUser instance) =>
    <String, dynamic>{
      'holder': instance.holder,
      'spouse': instance.spouse,
      'members': instance.members,
      'motherName': instance.motherName,
      'motherCityBorned': instance.motherCityBorned,
      'id': instance.id,
    };

ScheduleHistory _$ScheduleHistoryFromJson(Map<String, dynamic> json) {
  return ScheduleHistory(
    date: json['date'] as int?,
    scheduleId: json['scheduleId'] as String,
    typeScheduleStatus: json['typeScheduleStatus'] as int?,
    id: json['id'] as String,
  );
}

Map<String, dynamic> _$ScheduleHistoryToJson(ScheduleHistory instance) =>
    <String, dynamic>{
      'date': instance.date,
      'scheduleId': instance.scheduleId,
      'typeScheduleStatus': instance.typeScheduleStatus,
      'id': instance.id,
    };

Spouse _$SpouseFromJson(Map<String, dynamic> json) {
  return Spouse(
    name: json['name'] as String,
    birthday: json['birthday'] as int,
    genre: json['genre'] as int?,
    scholarity: json['scholarity'] as int?,
  );
}

Map<String, dynamic> _$SpouseToJson(Spouse instance) => <String, dynamic>{
      'name': instance.name,
      'birthday': instance.birthday,
      'genre': instance.genre,
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
