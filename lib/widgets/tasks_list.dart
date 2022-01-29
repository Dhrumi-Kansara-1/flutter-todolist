import 'package:flutter/material.dart';
import 'package:todoey/widgets/tasks_list.dart';
import './task_tile.dart';

class TasksList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TaskTile(), 
        TaskTile(), 
        TaskTile(), 
      ],
    );
  }
}