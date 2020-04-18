// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workout_item.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class WorkoutItemAdapter extends TypeAdapter<WorkoutItem> {
  @override
  final typeId = 3;

  @override
  WorkoutItem read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return WorkoutItem(
      exercise: fields[0] as Exercise,
      order: fields[1] as int,
      duration: fields[2] as int,
      weight: fields[3] as double,
      progress: fields[4] as int,
    );
  }

  @override
  void write(BinaryWriter writer, WorkoutItem obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.exercise)
      ..writeByte(1)
      ..write(obj.order)
      ..writeByte(2)
      ..write(obj.duration)
      ..writeByte(3)
      ..write(obj.weight)
      ..writeByte(4)
      ..write(obj.progress);
  }
}
