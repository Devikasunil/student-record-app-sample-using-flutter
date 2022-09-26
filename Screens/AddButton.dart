import 'package:database_project/Database/Functions/db_functions.dart';
import 'package:database_project/Database/model/data_model.dart';
import 'package:flutter/material.dart';
import 'package:database_project/Screens/ScreenOne.dart';

class AddButton extends StatelessWidget {
   AddButton({Key? key}) : super(key: key);

  final _nameController = TextEditingController();
  final _ageController = TextEditingController();
   final _genderController = TextEditingController();
  final _gradeController = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          TextFormField(
            controller: _nameController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Name',
              hintStyle: TextStyle(
                color: Colors.white,
              ),
            ),
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TextFormField(
            controller: _ageController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Age',
              hintStyle: TextStyle(
                color: Colors.white,
              ),
            ),
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TextFormField(
            controller: _genderController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Gender',
              hintStyle: TextStyle(
                color: Colors.white,
              ),
            ),
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TextFormField(
            controller: _gradeController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Grade',
              hintStyle: TextStyle(
                color: Colors.white,
              ),
            ),
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton.icon(
            onPressed: () {
              onAddStudentClicked();
            },
            icon: Icon(
              Icons.add,
              color: Colors.white,
            ),
            label: Text('''Add Student''',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.blue),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> onAddStudentClicked() async {
    final _name = _nameController.text.trim();
    final _age = _ageController.text.trim();
    final _gender = _genderController.text.trim();
    final _grade = _gradeController.text.trim();

    if (_name.isEmpty || _age.isEmpty || _gender.isEmpty || _grade.isEmpty) {
      return;
    }
    print('$_name $_age');

    final _student =
    StudentModel(name: _name, age: _age, gender: _gender, grade: _grade);
    addStudent(_student);
  }
}
