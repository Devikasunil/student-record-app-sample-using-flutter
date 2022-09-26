import 'dart:io';

import 'package:database_project/Database/Functions/db_functions.dart';
import 'package:database_project/Database/model/data_model.dart';
import 'package:database_project/Screens/StudentDetails.dart';
import 'package:flutter/material.dart';
import 'package:database_project/Screens/ScreenOne.dart';

class ScreenTwo extends StatefulWidget {
  ScreenTwo({
    Key? key,
  }) : super(key: key);

  // StudentModel data;

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Student List',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue,
        ),
        backgroundColor: Colors.lightBlue[900],
        body: Card(
          child: Builder(builder: (context) {
            return ValueListenableBuilder(
                valueListenable: studentListNotifier,
                builder: (BuildContext ctx, List<StudentModel> studentList,
                    Widget? child) {
                  return ListView.separated(
                    itemBuilder: (ctx, index) {
                      final data = studentList[index];
                      return ListTile(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (ctx) {

                                return StudentDetails( data: data);
                              },
                            ),
                          );
                        },
                        title: Text(
                          data.name,
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        subtitle: Text(
                          data.grade,
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        leading: CircleAvatar(
                            child: Image(
                              image: NetworkImage(
                                  'https://previews.123rf.com/images/jemastock/jemastock1812/jemastock181211312/126749826-cute-girl-kid-cartoon-vector-illustration-graphic-design.jpg'),
                            ),
                            ),
                      );
                    },
                    separatorBuilder: (ctx, int index) {
                      return const Divider(
                        thickness: 10,
                      );
                    },
                    itemCount: studentList.length,
                  );
                });
          }),
          color: Colors.lightBlue[900],
        ),
      ),
    );
  }
}
