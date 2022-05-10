// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************

// TypeAdapterGenerator
// **************************************************************************
import 'package:hive/hive.dart';
import 'package:moralar_widgets/moralar_widgets.dart';

class QuestionResponseAdapter extends TypeAdapter<QuestionResponse> {
  @override
  final int typeId = 1;

  @override
  QuestionResponse read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return QuestionResponse(
      nameQuestion: fields[0] as String,
      typeResponse: fields[1] as int,
      description: fields[2].cast<Description>(),
      id: fields[3] as String,
    );
  }

  @override
  void write(BinaryWriter writer, QuestionResponse obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.nameQuestion)
      ..writeByte(1)
      ..write(obj.typeResponse)
      ..writeByte(2)
      ..write(obj.description)
      ..writeByte(3)
      ..write(obj.id);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is QuestionResponseAdapter &&
              runtimeType == other.runtimeType &&
              typeId == other.typeId;
}
