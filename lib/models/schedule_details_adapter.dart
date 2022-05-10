// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************

// TypeAdapterGenerator
// **************************************************************************
import 'package:hive/hive.dart';
import 'package:moralar_widgets/moralar_widgets.dart';

class ScheduleDetailsAdapter extends TypeAdapter<ScheduleDetails> {
  @override
  final int typeId = 6;

  @override
  ScheduleDetails read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ScheduleDetails(
      date: fields[0] as int?,
      place: fields[1] as String?,
      description: fields[2] as String?,
      familyId: fields[3] as String?,
      holderNumber: fields[4] as String?,
      holderCpf: fields[5] as String?,
      typeSubject: fields[6] as int?,
      typeScheduleStatus: fields[7] as int?,
      id: fields[8] as String,
    );
  }

  @override
  void write(BinaryWriter writer, ScheduleDetails obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.date)
      ..writeByte(1)
      ..write(obj.place)
      ..writeByte(2)
      ..write(obj.description)
      ..writeByte(3)
      ..write(obj.familyId)
      ..writeByte(4)
      ..write(obj.holderNumber)
      ..writeByte(5)
      ..write(obj.holderCpf)
      ..writeByte(6)
      ..write(obj.typeSubject)
      ..writeByte(7)
      ..write(obj.typeScheduleStatus)
      ..writeByte(8)
      ..write(obj.id);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is ScheduleDetailsAdapter &&
              runtimeType == other.runtimeType &&
              typeId == other.typeId;
}
