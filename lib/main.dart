//lec 206, part 16
import 'package:flutter/material.dart';
import './screens/tasks_screen.dart';
import 'package:provider/provider.dart';
import './models/task_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget { 

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider( 
      create: (context) => TaskProvider(),
      child: MaterialApp( 
        home: TasksScreen(),
      ),
    );
  }
}