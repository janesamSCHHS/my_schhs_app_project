// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'med.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class EmployeeAdapter extends TypeAdapter<Medication> {
  @override
  final int typeId = 0;

  @override
  Medication read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Medication(
      medName: fields[0] as String,
      medStrength: fields[1] as String,
      medDose: fields[2] as String,
      specInstructions: fields[3] as String,
      dateStarted: fields[4] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Medication obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.medName)
      ..writeByte(1)
      ..write(obj.medStrength)
      ..writeByte(2)
      ..write(obj.medDose)
      ..writeByte(3)
      ..write(obj.specInstructions)
      ..writeByte(4)
      ..write(obj.dateStarted);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EmployeeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
