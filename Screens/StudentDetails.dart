import 'package:database_project/Database/Functions/db_functions.dart';
import 'package:database_project/Database/model/data_model.dart';
import 'package:flutter/material.dart';


class StudentDetails extends StatelessWidget {
  StudentDetails({Key? key, required this.data})
      : super(
          key: key,
        );


  StudentModel data;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Text(
              'Student Details',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            actions: [
              IconButton(
                  onPressed: () {
                    if (data.id != null) {
                      deleteStudent(data.id!);
                      SnackBar(
                        content: Text("Succesfully Deleted", style:
                          TextStyle(
                            color: Colors.green,
                          ),),
                      );
                    } else {
                      print('Student ID is null unable to delete');
                    }
                  },
                  icon: Icon(
                    Icons.delete,
                    color: Colors.white,
                  ))
            ],
            backgroundColor: Colors.blue,
          ),
          backgroundColor: Colors.lightBlue[900],
          body: SingleChildScrollView(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Center(
                  child: Column(
                    children: [
                      CircleAvatar(
                        child: Image(
                          image: NetworkImage(
                            'https://previews.123rf.com/images/jemastock/jemastock1812/jemastock181211312/126749826-cute-girl-kid-cartoon-vector-illustration-graphic-design.jpg',
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Center(
                        child: Row(
                          children: [
                            Text(
                              'Name : ',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              data.name,
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        thickness: 5,
                        color: Colors.lightBlue[900],
                      ),
                      Center(
                        child: Row(
                          children: [
                            Text(
                              'Age : ',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              data.age,
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        thickness: 5,
                        color: Colors.lightBlue[900],
                      ),
                      Center(
                        child: Row(
                          children: [
                            Text(
                              'Gender : ',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              data.gender,
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        thickness: 5,
                        color: Colors.lightBlue[900],
                      ),
                      Center(
                        child: Row(
                          children: [
                            Text(
                              'Grade : ',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              data.grade,
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )),
    );
  }
}
