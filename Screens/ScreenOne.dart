import 'package:database_project/Database/Functions/db_functions.dart';
import 'package:database_project/Database/model/data_model.dart';
import 'package:database_project/Screens/AddButton.dart';
import 'package:database_project/Screens/ScreenTwo.dart';
import 'package:flutter/material.dart';

class ScreenOne extends StatelessWidget {
   ScreenOne({Key? key}) : super(key: key);
  // final data = StudentModel(name: 'name', age: 'age', gender: 'gender', grade: 'grade',);

  @override
  Widget build(BuildContext context) {
    getAllStudents();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Edit here',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.blue,
        ),
        backgroundColor: Colors.lightBlue[900],
        body: Center(
          child: ListView(
            children: [
              Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    AddButton(),
                    // TextButton(
                    //   onPressed: () {},
                    //   child: Text(
                    //     'Edit',
                    //     style: TextStyle(
                    //       color: Colors.white,
                    //     ),
                    //   ),
                    //   style: ButtonStyle(
                    //     backgroundColor:
                    //         MaterialStatePropertyAll(Colors.blue),
                    //   ),
                    // ),
                    // TextButton.icon(
                    //   style: ButtonStyle(
                    //     backgroundColor:
                    //         MaterialStatePropertyAll(Colors.blue),
                    //   ),
                    //   onPressed: () {
                    //     if(data.id != null){
                    //        deleteStudent(data.id! );
                    //     }else{
                    //       print('Student ID is null unable to delete');
                    //     }
                    //   },
                    //   icon: Icon(Icons.delete,color: Colors.red,),
                    //   label: Text(
                    //     'Delete',
                    //     style: TextStyle(
                    //       color: Colors.white,
                    //     ),
                    //   ),
                    // ),
                    TextButton.icon(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Colors.blue),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>  ScreenTwo()),
                        );
                      },
                      icon: Icon(Icons.touch_app,color: Colors.white,),
                      label: Text(
                        'Show',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    // TextButton(
                    //   onPressed: () {
                    //     Navigator.push(
                    //       context,
                    //       MaterialPageRoute(builder: (context) => const ScreenTwo()),
                    //     );
                    //   },
                    //   child: Text(
                    //     'Show',
                    //     style: TextStyle(
                    //       color: Colors.black,
                    //     ),
                    //   ),
                    //   style: ButtonStyle(
                    //     backgroundColor: MaterialStatePropertyAll(Colors.greenAccent),
                    //   ),
                  ]),
            ],
          ),
        ),
      ),
    );
  }
}
