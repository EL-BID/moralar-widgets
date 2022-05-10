// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************

// TypeAdapterGenerator
// **************************************************************************
import 'package:hive/hive.dart';
import 'package:moralar_widgets/moralar_widgets.dart';

class AnswerAdapter extends TypeAdapter<Answer> {
  @override
  final int typeId = 4;

  @override
  Answer read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Answer(
      questionDescriptionId: fields[0] as List<String>?,
      questionId: fields[1] as String?,
      answerDescription: fields[2] as String?,
      id: fields[3] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Answer obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.questionDescriptionId)
      ..writeByte(1)
      ..write(obj.questionId)
      ..writeByte(2)
      ..write(obj.answerDescription)
      ..writeByte(3)
      ..write(obj.id);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is AnswerAdapter &&
              runtimeType == other.runtimeType &&
              typeId == other.typeId;
}
