import 'package:database_project/Database/model/data_model.dart';
import 'package:database_project/Screens/ScreenOne.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

Future<void> main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  if(!Hive.isAdapterRegistered(StudentModelAdapter().typeId)){
    Hive.registerAdapter(StudentModelAdapter());
  }
  runApp(const DatabaseSample());
}

class DatabaseSample extends StatelessWidget {
  const DatabaseSample({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      title: 'Student Record',
      theme: ThemeData(
        canvasColor: Colors.blue,
      ),
      home: ScreenOne(),);
  }
}
