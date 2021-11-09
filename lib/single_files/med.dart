
import 'package:hive/hive.dart';
part 'med.g.dart';

@HiveType(typeId: 0)
class Medication{

  @HiveField(0)
  String medName;

  @HiveField(1)
  String medStrength;

  @HiveField(2)
  String medDose;

  @HiveField(3)
  String specInstructions;

  @HiveField(4)
  String dateStarted;

  Medication({required this.medName, required this.medStrength, required this.medDose, required this.specInstructions, required this.dateStarted});

}