// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************
import 'package:hive/hive.dart';
import 'package:moralar_widgets/moralar_widgets.dart';

class QuizDetailsAdapter extends TypeAdapter<QuizDetails> {
  @override
  final int typeId = 0;

  @override
  QuizDetails read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return QuizDetails(
      title: fields[0] as String,
      typeQuiz: fields[1] as int,
      questionViewModel: fields[2].cast<QuestionResponse>(),
      id: fields[3] as String,
      created: fields[4] as int,
    );
  }

  @override
  void write(BinaryWriter writer, QuizDetails obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.title)
      ..writeByte(1)
      ..write(obj.typeQuiz)
      ..writeByte(2)
      ..write(obj.questionViewModel)
      ..writeByte(3)
      ..write(obj.id)
      ..writeByte(4)
      ..write(obj.created);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is QuizDetailsAdapter &&
              runtimeType == other.runtimeType &&
              typeId == other.typeId;
}
