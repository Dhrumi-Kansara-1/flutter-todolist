//lec 198, part 16
import 'package:flutter/material.dart';
import './screens/tasks_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp( 
      home: TasksScreen(),
    );
  }
}