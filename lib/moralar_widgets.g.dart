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
    latitude: (json['latitude'] as num?)?.toDouble(),
    longitude: (json['longitude'] as num?)?.toDouble(),
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
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };

Answer _$AnswerFromJson(Map<String, dynamic> json) {
  return Answer(
    questionDescriptionId: (json['questionDescriptionId'] as List<dynamic>?)
        ?.map((e) => e as String)
        .toList(),
    questionId: json['questionId'] as String?,
    answerDescription: json['answerDescription'] as String?,
    id: json['id'] as String?,
  );
}

Map<String, dynamic> _$AnswerToJson(Answer instance) => <String, dynamic>{
      'questionDescriptionId': instance.questionDescriptionId,
      'questionId': instance.questionId,
      'answerDescription': instance.answerDescription,
      'id': instance.id,
    };

AnswerDetails _$AnswerDetailsFromJson(Map<String, dynamic> json) {
  return AnswerDetails(
    title: json['title'] as String,
    question: json['question'] as String,
    typeResponse: json['typeResponse'] as int,
    date: json['date'] as int?,
    answers:
        (json['answers'] as List<dynamic>).map((e) => e as String).toList(),
    familyNumber: json['familyNumber'] as String?,
    familyHolderName: json['familyHolderName'] as String?,
    familyHolderCpf: json['familyHolderCpf'] as String?,
  );
}

Map<String, dynamic> _$AnswerDetailsToJson(AnswerDetails instance) =>
    <String, dynamic>{
      'title': instance.title,
      'question': instance.question,
      'typeResponse': instance.typeResponse,
      'date': instance.date,
      'answers': instance.answers,
      'familyNumber': instance.familyNumber,
      'familyHolderName': instance.familyHolderName,
      'familyHolderCpf': instance.familyHolderCpf,
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
    isSubscribed: json['isSubscribed'] as bool,
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
      'isSubscribed': instance.isSubscribed,
      'id': instance.id,
    };

CourseTTS _$CourseTTSFromJson(Map<String, dynamic> json) {
  return CourseTTS(
    title: json['title'] as String,
    startDate: json['startDate'] as int,
    endDate: json['endDate'] as int,
    schedule: json['schedule'] as String?,
    typeStatusCourse: json['typeStatusCourse'] as int,
    id: json['id'] as String,
  );
}

Map<String, dynamic> _$CourseTTSToJson(CourseTTS instance) => <String, dynamic>{
      'title': instance.title,
      'startDate': instance.startDate,
      'endDate': instance.endDate,
      'schedule': instance.schedule,
      'typeStatusCourse': instance.typeStatusCourse,
      'id': instance.id,
    };

Description _$DescriptionFromJson(Map<String, dynamic> json) {
  return Description(
    description: json['description'] as String,
    id: json['id'] as String,
  );
}

Map<String, dynamic> _$DescriptionToJson(Description instance) =>
    <String, dynamic>{
      'description': instance.description,
      'id': instance.id,
    };

FamilyHolder _$FamilyHolderFromJson(Map<String, dynamic> json) {
  return FamilyHolder(
    cpf: json['cpf'] as String,
    email: json['email'] as String?,
    name: json['name'] as String,
    number: json['number'] as String,
    birthday: json['birthday'] as int,
    genre: json['genre'] as int?,
    phone: json['phone'] as String?,
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

FamilyTTS _$FamilyTTSFromJson(Map<String, dynamic> json) {
  return FamilyTTS(
    id: json['id'] as String,
    place: json['place'] as String,
    description: json['description'] as String,
    familyId: json['familyId'] as String,
    holderNumber: json['holderNumber'] as String,
    holderName: json['holderName'] as String,
    holderCpf: json['holderCpf'] as String,
    date: json['date'] as int,
    typeSubject: json['typeSubject'] as int,
    typeScheduleStatus: json['typeScheduleStatus'] as int,
    canNextStage: json['canNextStage'] as bool?,
    detailQuiz: json['detailQuiz'] != null ? (json['detailQuiz'] as List)
      .map((item) => Quiz.fromJson(item))
      .toList() : null,
    detailEnquete: json['detailEnquete'] != null ? (json['detailEnquete'] as List)
        .map((item) => Quiz.fromJson(item))
        .toList() : null,
    courses: json['courses'] != null ? (json['courses'] as List)
        .map((item) => CourseTTS.fromJson(item))
        .toList() : null,
    interestResidencialProperty: json['interestResidencialProperty'] != null ? (json['interestResidencialProperty'] as List)
        .map((item) => Property.fromJson(item))
        .toList() : null,
    schedules: json['schedules'] != null ? (json['schedules'] as List)
        .map((item) => ScheduleDetails.fromJson(item))
        .toList() : null,
  );
}

Map<String, dynamic> _$FamilyTTSToJson(FamilyTTS instance) => <String, dynamic>{
      'id': instance.id,
      'place': instance.place,
      'description': instance.description,
      'familyId': instance.familyId,
      'holderNumber': instance.holderNumber,
      'holderName': instance.holderName,
      'holderCpf': instance.holderCpf,
      'date': instance.date,
      'typeSubject': instance.typeSubject,
      'typeScheduleStatus': instance.typeScheduleStatus,
      'canNextStage': instance.canNextStage,
      'detailQuiz': instance.detailQuiz,
      'detailEnquete': instance.detailEnquete,
      'courses': instance.courses,
      'interestResidencialProperty': instance.interestResidencialProperty,
      'schedules': instance.schedules,
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

Informative _$InformativeFromJson(Map<String, dynamic> json) {
  return Informative(
    informativeId: json['informativeId'] as String,
    datePublish: json['datePublish'] as String?,
    image: json['image'] as String?,
    description: json['description'] as String?,
    dateViewed: json['dateViewed'] as int?,
    id: json['id'] as String,
  );
}

Map<String, dynamic> _$InformativeToJson(Informative instance) =>
    <String, dynamic>{
      'informativeId': instance.informativeId,
      'datePublish': instance.datePublish,
      'image': instance.image,
      'description': instance.description,
      'dateViewed': instance.dateViewed,
      'id': instance.id,
    };

Match _$MatchFromJson(Map<String, dynamic> json) {
  return Match(
    id: json['id'] as String,
    familyId: json['familyId'] as String,
    residencialPropertyId: json['residencialPropertyId'] as String,
    holderName: json['holderName'] as String,
    holderEmail: json['holderEmail'] as String,
    holderCpf: json['holderCpf'] as String,
    holderNumber: json['holderNumber'] as String,
    residencialCode: json['residencialCode'] as String,
    interest: json['interest'] as int,
    residencialPropertyAdress: Address.fromJson(
        json['residencialPropertyAdress'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MatchToJson(Match instance) => <String, dynamic>{
      'id': instance.id,
      'familyId': instance.familyId,
      'residencialPropertyId': instance.residencialPropertyId,
      'holderName': instance.holderName,
      'holderEmail': instance.holderEmail,
      'holderCpf': instance.holderCpf,
      'holderNumber': instance.holderNumber,
      'residencialCode': instance.residencialCode,
      'interest': instance.interest,
      'residencialPropertyAdress': instance.residencialPropertyAdress,
    };

MoralarNotification _$MoralarNotificationFromJson(Map<String, dynamic> json) {
  return MoralarNotification(
    status: json['status'] as bool,
    created: json['created'] as int,
    dateViewed: json['dateViewed'] as int?,
    title: json['title'] as String,
    description: json['description'] as String,
    image: json['image'] as String?,
    id: json['id'] as String,
  );
}

Map<String, dynamic> _$MoralarNotificationToJson(
        MoralarNotification instance) =>
    <String, dynamic>{
      'status': instance.status,
      'dateViewed': instance.dateViewed,
      'created': instance.created,
      'title': instance.title,
      'description': instance.description,
      'image': instance.image,
      'id': instance.id,
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
    interestedFamilies: json['interestedFamilies'] as int,
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
      'interestedFamilies': instance.interestedFamilies,
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
    isInterested: json['isInterested'] as bool?,
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
      'isInterested': instance.isInterested,
    };

PropertyFilter _$PropertyFilterFromJson(Map<String, dynamic> json) {
  return PropertyFilter(
    typeProperty: json['typeProperty'] as String?,
    startSquareFootage: (json['startSquareFootage'] as num?)?.toDouble(),
    endSquareFootage: (json['endSquareFootage'] as num?)?.toDouble(),
    startCondominiumValue: (json['startCondominiumValue'] as num?)?.toDouble(),
    endCondominiumValue: (json['endCondominiumValue'] as num?)?.toDouble(),
    startIptuValue: (json['startIptuValue'] as num?)?.toDouble(),
    endIptuValue: (json['endIptuValue'] as num?)?.toDouble(),
    neighborhood: json['neighborhood'] as String?,
    startNumberOfBedrooms: json['startNumberOfBedrooms'] as int?,
    endNumberOfBedrooms: json['endNumberOfBedrooms'] as int?,
    hasGarage: json['hasGarage'] as bool?,
    hasAccessLadder: json['hasAccessLadder'] as bool?,
    hasAccessRamp: json['hasAccessRamp'] as bool?,
    hasAdaptedToPcd: json['hasAdaptedToPcd'] as bool?,
    lat: json['lat'] as double?,
    lng: json['lng'] as double?,
  );
}

Map<String, dynamic> _$PropertyFilterToJson(PropertyFilter instance) =>
    <String, dynamic>{
      'typeProperty': instance.typeProperty,
      'startSquareFootage': instance.startSquareFootage,
      'endSquareFootage': instance.endSquareFootage,
      'startCondominiumValue': instance.startCondominiumValue,
      'endCondominiumValue': instance.endCondominiumValue,
      'startIptuValue': instance.startIptuValue,
      'endIptuValue': instance.endIptuValue,
      'neighborhood': instance.neighborhood,
      'startNumberOfBedrooms': instance.startNumberOfBedrooms,
      'endNumberOfBedrooms': instance.endNumberOfBedrooms,
      'hasGarage': instance.hasGarage,
      'hasAccessLadder': instance.hasAccessLadder,
      'hasAccessRamp': instance.hasAccessRamp,
      'hasAdaptedToPcd': instance.hasAdaptedToPcd,
      'lat': instance.lat,
      'lng': instance.lng,
    };

QuestionResponse _$QuestionResponseFromJson(Map<String, dynamic> json) {
  return QuestionResponse(
    nameQuestion: json['nameQuestion'] as String,
    typeResponse: json['typeResponse'] as int,
    description: (json['description'] as List<dynamic>)
        .map((e) => Description.fromJson(e as Map<String, dynamic>))
        .toList(),
    id: json['id'] as String,
  );
}

Map<String, dynamic> _$QuestionResponseToJson(QuestionResponse instance) =>
    <String, dynamic>{
      'nameQuestion': instance.nameQuestion,
      'typeResponse': instance.typeResponse,
      'description': instance.description,
      'id': instance.id,
    };

Quiz _$QuizFromJson(Map<String, dynamic> json) {
  return Quiz(
    title: json['title'] as String,
    typeQuiz: json['typeQuiz'] as int,
    familyId: json['familyId'] as String?,
    quizId: json['quizId'] as String?,
    holderName: json['holderName'] as String?,
    holderNumber: json['holderNumber'] as String?,
    holderCpf: json['holderCpf'] as String?,
    questionRegister: json['questionRegister'] as bool?,
    created: json['created'] as int,
    typeStatus: json['typeStatus'] as int,
    id: json['id'] as String,
  );
}

Map<String, dynamic> _$QuizToJson(Quiz instance) => <String, dynamic>{
      'title': instance.title,
      'typeQuiz': instance.typeQuiz,
      'familyId': instance.familyId,
      'quizId': instance.quizId,
      'holderName': instance.holderName,
      'holderNumber': instance.holderNumber,
      'holderCpf': instance.holderCpf,
      'questionRegister': instance.questionRegister,
      'created': instance.created,
      'typeStatus': instance.typeStatus,
      'id': instance.id,
    };

QuizDetails _$QuizDetailsFromJson(Map<String, dynamic> json) {
  return QuizDetails(
    title: json['title'] as String,
    typeQuiz: json['typeQuiz'] as int,
    questionViewModel: (json['questionViewModel'] as List<dynamic>)
        .map((e) => QuestionResponse.fromJson(e as Map<String, dynamic>))
        .toList(),
    id: json['id'] as String,
    created: json['created'] as int,
  );
}

Map<String, dynamic> _$QuizDetailsToJson(QuizDetails instance) =>
    <String, dynamic>{
      'title': instance.title,
      'typeQuiz': instance.typeQuiz,
      'questionViewModel': instance.questionViewModel,
      'id': instance.id,
      'created': instance.created,
    };

ScheduleDetails _$ScheduleDetailsFromJson(Map<String, dynamic> json) {
  return ScheduleDetails(
    date: json['date'] as int?,
    place: json['place'] as String?,
    description: json['description'] as String?,
    familyId: json['familyId'] as String?,
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

Spouse _$SpouseFromJson(Map<String, dynamic> json) {
  return Spouse(
    name: json['name'] as String?,
    birthday: json['birthday'] as int?,
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
    phone: json['phone'] as String?,
    id: json['id'] as String,
    jobPost: json['jobPost'] as String,
    name: json['name'] as String,
    cpf: json['cpf'] as String,
    email: json['email'] as String,
  );
}

Map<String, dynamic> _$TTSToJson(TTS instance) => <String, dynamic>{
      'name': instance.name,
      'cpf': instance.cpf,
      'email': instance.email,
      'jobPost': instance.jobPost,
      'phone': instance.phone,
      'id': instance.id,
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

Video _$VideoFromJson(Map<String, dynamic> json) {
  return Video(
    created: json['created'] as int,
    thumbnail: json['thumbnail'] as String,
    title: json['title'] as String,
    url: json['url'] as String,
    blocked: json['blocked'] as bool?,
    id: json['id'] as String,
  );
}

Map<String, dynamic> _$VideoToJson(Video instance) => <String, dynamic>{
      'created': instance.created,
      'thumbnail': instance.thumbnail,
      'title': instance.title,
      'url': instance.url,
      'blocked': instance.blocked,
      'id': instance.id,
    };
