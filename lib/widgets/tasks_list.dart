import 'package:flutter/material.dart'; 
import './task_tile.dart';
import 'package:provider/provider.dart';
import '../models/task_provider.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskProvider>(
      builder: (context, taskProvider, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(index: index);
          },
          itemCount: taskProvider.tasksCount,
        );
      },
    );
  }
}
