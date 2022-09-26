import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'data_model.g.dart';

@HiveType(typeId: 1)
class StudentModel {
  @HiveType(typeId: 0)
  int? id;

  @HiveField(1)
  final String name;
  @HiveField(2)
  final String age;
  @HiveField(3)
  final String gender;
  @HiveField(4)
  final String grade;

  StudentModel({
    required this.name,
    required this.age,
    required this.gender,
    required this.grade,
    this.id,
  });
}
