import 'package:flutter/material.dart';
import 'package:database_project/Database/model/data_model.dart';
import 'package:hive/hive.dart';

ValueNotifier<List<StudentModel>> studentListNotifier = ValueNotifier([]);
Future<void> addStudent(StudentModel value)async {


  final studentDB = await Hive.openBox<StudentModel>('Student_db');
  final _id = await studentDB.add(value);
  value.id = _id;
  final data = StudentModel(name: value.name, age: value.age, gender: value.gender, grade: value.grade,);

  await studentDB.put(_id, data);

  studentListNotifier.value.add(data);
  studentListNotifier.notifyListeners();
}
Future<void> getAllStudents() async{
  final studentDB = await Hive.openBox<StudentModel>('Student_db');
  studentListNotifier.value.clear();

  studentListNotifier.value.addAll(studentDB.values);
  studentListNotifier.notifyListeners();
}
Future<void> deleteStudent(int id) async{
  final studentDB = await Hive.openBox<StudentModel>('student_db');
  await studentDB.delete(id);
}
