// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************

// TypeAdapterGenerator
// **************************************************************************
import 'package:hive/hive.dart';
import 'package:moralar_widgets/moralar_widgets.dart';

class QuizAdapter extends TypeAdapter<Quiz> {
  @override
  final int typeId = 3;

  @override
  Quiz read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Quiz(
      title: fields[0] as String,
      typeQuiz: fields[1] as int,
      familyId: fields[2] as String?,
      quizId: fields[3] as String?,
      holderName: fields[4] as String?,
      holderNumber: fields[5] as String?,
      holderCpf: fields[6] as String?,
      questionRegister: fields[7] as bool?,
      created: fields[8] as int,
      typeStatus: fields[9] as int,
      id: fields[10] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Quiz obj) {
    writer
      ..writeByte(11)
      ..writeByte(0)
      ..write(obj.title)
      ..writeByte(1)
      ..write(obj.typeQuiz)
      ..writeByte(2)
      ..write(obj.familyId)
      ..writeByte(3)
      ..write(obj.quizId)
      ..writeByte(4)
      ..write(obj.holderName)
      ..writeByte(5)
      ..write(obj.holderNumber)
      ..writeByte(6)
      ..write(obj.holderCpf)
      ..writeByte(7)
      ..write(obj.questionRegister)
      ..writeByte(8)
      ..write(obj.created)
      ..writeByte(9)
      ..write(obj.typeStatus)
      ..writeByte(10)
      ..write(obj.id);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is QuizAdapter &&
              runtimeType == other.runtimeType &&
              typeId == other.typeId;
}
