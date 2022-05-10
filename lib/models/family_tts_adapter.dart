// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************

// TypeAdapterGenerator
// **************************************************************************
import 'package:hive/hive.dart';
import 'package:moralar_widgets/moralar_widgets.dart';

class FamilyTTSAdapter extends TypeAdapter<FamilyTTS> {
  @override
  final int typeId = 5;

  @override
  FamilyTTS read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return FamilyTTS(
      id: fields[0] as String,
      place: fields[1] as String,
      description: fields[2] as String,
      familyId: fields[3] as String,
      holderNumber: fields[4] as String,
      holderName: fields[5] as String,
      holderCpf: fields[6] as String,
      date: fields[7] as int,
      typeSubject: fields[8] as int,
      typeScheduleStatus: fields[9] as int,
      canNextStage: fields[10] as bool?,
      detailQuiz: fields[11].cast<Quiz>(),
      detailEnquete: fields[12].cast<Quiz>(),
      courses: fields[13].cast<CourseTTS>(),
      interestResidencialProperty: fields[14].cast<Property>(),
      schedules: fields[15].cast<ScheduleDetails>(),
    );
  }

  @override
  void write(BinaryWriter writer, FamilyTTS obj) {
    writer
      ..writeByte(16)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.place)
      ..writeByte(2)
      ..write(obj.description)
      ..writeByte(3)
      ..write(obj.familyId)
      ..writeByte(4)
      ..write(obj.holderNumber)
      ..writeByte(5)
      ..write(obj.holderName)
      ..writeByte(6)
      ..write(obj.holderCpf)
      ..writeByte(7)
      ..write(obj.date)
      ..writeByte(8)
      ..write(obj.typeSubject)
      ..writeByte(9)
      ..write(obj.typeScheduleStatus)
      ..writeByte(10)
      ..write(obj.canNextStage)
      ..writeByte(11)
      ..write(obj.detailQuiz)
      ..writeByte(12)
      ..write(obj.detailEnquete)
      ..writeByte(13)
      ..write(obj.courses)
      ..writeByte(14)
      ..write(obj.interestResidencialProperty)
      ..writeByte(15)
      ..write(obj.schedules);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is FamilyTTSAdapter &&
              runtimeType == other.runtimeType &&
              typeId == other.typeId;
}
