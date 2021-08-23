// GENERATED CODE - DO NOT MODIFY BY HAND

part of moralar_widgets;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Address _$AddressFromJson(Map<String, dynamic> json) {
  return Address(
    streetAddress: json['streetAddress'] as String?,
    number: json['number'] as String?,
    cityName: json['cityName'] as String?,
    cityId: json['cityId'] as String?,
    stateName: json['stateName'] as String?,
    stateUf: json['stateUf'] as String?,
    stateId: json['stateId'] as String?,
    neighborhood: json['neighborhood'] as String?,
    complement: json['complement'] as String?,
    location: json['location'] as String?,
    cep: json['cep'] as String?,
  );
}

Map<String, dynamic> _$AddressToJson(Address instance) => <String, dynamic>{
      'streetAddress': instance.streetAddress,
      'number': instance.number,
      'cityName': instance.cityName,
      'cityId': instance.cityId,
      'stateName': instance.stateName,
      'stateUf': instance.stateUf,
      'stateId': instance.stateId,
      'neighborhood': instance.neighborhood,
      'complement': instance.complement,
      'location': instance.location,
      'cep': instance.cep,
    };

Course _$CourseFromJson(Map<String, dynamic> json) {
  return Course(
    title: json['title'] as String,
    img: json['img'] as String?,
    startDate: json['startDate'] as int,
    endDate: json['endDate'] as int,
    schedule: json['schedule'] as String,
    place: json['place'] as String?,
    workLoad: json['workLoad'] as String?,
    description: json['description'] as String?,
    startTargetAudienceAge: json['startTargetAudienceAge'] as int,
    endTargetAudienceAge: json['endTargetAudienceAge'] as int,
    typeGenre: json['typeGenre'] as int?,
    numberOfVacancies: json['numberOfVacancies'] as int?,
    id: json['id'] as String,
  );
}

Map<String, dynamic> _$CourseToJson(Course instance) => <String, dynamic>{
      'title': instance.title,
      'img': instance.img,
      'startDate': instance.startDate,
      'endDate': instance.endDate,
      'schedule': instance.schedule,
      'place': instance.place,
      'workLoad': instance.workLoad,
      'description': instance.description,
      'startTargetAudienceAge': instance.startTargetAudienceAge,
      'endTargetAudienceAge': instance.endTargetAudienceAge,
      'typeGenre': instance.typeGenre,
      'numberOfVacancies': instance.numberOfVacancies,
      'id': instance.id,
    };

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
    isFirstAcess: json['isFirstAcess'] as bool?,
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
      'isFirstAcess': instance.isFirstAcess,
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
    isFirstAcess: json['isFirstAcess'] as bool?,
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
      'isFirstAcess': instance.isFirstAcess,
    };

Property _$PropertyFromJson(Map<String, dynamic> json) {
  return Property(
    code: json['code'] as String?,
    photo: (json['photo'] as List<dynamic>?)?.map((e) => e as String).toList(),
    project: json['project'] as String?,
    blocked: json['blocked'] as bool?,
    residencialPropertyAdress: Address.fromJson(
        json['residencialPropertyAdress'] as Map<String, dynamic>),
    residencialPropertyFeatures: PropertyFeatures.fromJson(
        json['residencialPropertyFeatures'] as Map<String, dynamic>),
    id: json['id'] as String,
  );
}

Map<String, dynamic> _$PropertyToJson(Property instance) => <String, dynamic>{
      'code': instance.code,
      'photo': instance.photo,
      'project': instance.project,
      'blocked': instance.blocked,
      'residencialPropertyAdress': instance.residencialPropertyAdress,
      'residencialPropertyFeatures': instance.residencialPropertyFeatures,
      'id': instance.id,
    };

PropertyFeatures _$PropertyFeaturesFromJson(Map<String, dynamic> json) {
  return PropertyFeatures(
    propertyValue: (json['propertyValue'] as num?)?.toDouble(),
    typeProperty: json['typeProperty'] as int?,
    squareFootage: (json['squareFootage'] as num?)?.toDouble(),
    condominiumValue: (json['condominiumValue'] as num?)?.toDouble(),
    iptuValue: (json['iptuValue'] as num?)?.toDouble(),
    neighborhood: json['neighborhood'] as String?,
    numberFloors: json['numberFloors'] as int?,
    floorLocation: json['floorLocation'] as int?,
    hasElevator: json['hasElevator'] as bool?,
    numberOfBedrooms: json['numberOfBedrooms'] as int?,
    numberOfBathrooms: json['numberOfBathrooms'] as int?,
    hasServiceArea: json['hasServiceArea'] as bool?,
    hasGarage: json['hasGarage'] as bool?,
    hasYard: json['hasYard'] as bool?,
    hasCistern: json['hasCistern'] as bool?,
    hasWall: json['hasWall'] as bool?,
    hasAccessLadder: json['hasAccessLadder'] as bool?,
    hasAccessRamp: json['hasAccessRamp'] as bool?,
    hasAdaptedToPcd: json['hasAdaptedToPcd'] as bool?,
    propertyRegularization: json['propertyRegularization'] as int?,
    typeGasInstallation: json['typeGasInstallation'] as int?,
  );
}

Map<String, dynamic> _$PropertyFeaturesToJson(PropertyFeatures instance) =>
    <String, dynamic>{
      'propertyValue': instance.propertyValue,
      'typeProperty': instance.typeProperty,
      'squareFootage': instance.squareFootage,
      'condominiumValue': instance.condominiumValue,
      'iptuValue': instance.iptuValue,
      'neighborhood': instance.neighborhood,
      'numberFloors': instance.numberFloors,
      'floorLocation': instance.floorLocation,
      'hasElevator': instance.hasElevator,
      'numberOfBedrooms': instance.numberOfBedrooms,
      'numberOfBathrooms': instance.numberOfBathrooms,
      'hasServiceArea': instance.hasServiceArea,
      'hasGarage': instance.hasGarage,
      'hasYard': instance.hasYard,
      'hasCistern': instance.hasCistern,
      'hasWall': instance.hasWall,
      'hasAccessLadder': instance.hasAccessLadder,
      'hasAccessRamp': instance.hasAccessRamp,
      'hasAdaptedToPcd': instance.hasAdaptedToPcd,
      'propertyRegularization': instance.propertyRegularization,
      'typeGasInstallation': instance.typeGasInstallation,
    };

ScheduleDetails _$ScheduleDetailsFromJson(Map<String, dynamic> json) {
  return ScheduleDetails(
    date: json['date'] as int?,
    place: json['place'] as String?,
    description: json['description'] as String?,
    familyId: json['familyId'] as String,
    holderNumber: json['holderNumber'] as String?,
    holderCpf: json['holderCpf'] as String?,
    typeScheduleStatus: json['typeScheduleStatus'] as int?,
    typeSubject: json['typeSubject'] as int?,
    id: json['id'] as String,
  );
}

Map<String, dynamic> _$ScheduleDetailsToJson(ScheduleDetails instance) =>
    <String, dynamic>{
      'date': instance.date,
      'place': instance.place,
      'description': instance.description,
      'familyId': instance.familyId,
      'holderNumber': instance.holderNumber,
      'holderCpf': instance.holderCpf,
      'typeSubject': instance.typeSubject,
      'typeScheduleStatus': instance.typeScheduleStatus,
      'id': instance.id,
    };

ScheduleHistory _$ScheduleHistoryFromJson(Map<String, dynamic> json) {
  return ScheduleHistory(
    date: json['date'] as int?,
    scheduleId: json['scheduleId'] as String,
    typeScheduleStatus: json['typeScheduleStatus'] as int?,
    typeSubject: json['typeSubject'] as int?,
    id: json['id'] as String,
  );
}

Map<String, dynamic> _$ScheduleHistoryToJson(ScheduleHistory instance) =>
    <String, dynamic>{
      'date': instance.date,
      'scheduleId': instance.scheduleId,
      'typeSubject': instance.typeSubject,
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

Timeline _$TimelineFromJson(Map<String, dynamic> json) {
  return Timeline(
    data: (json['data'] as List<dynamic>)
        .map((e) => ScheduleHistory.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$TimelineToJson(Timeline instance) => <String, dynamic>{
      'data': instance.data,
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
