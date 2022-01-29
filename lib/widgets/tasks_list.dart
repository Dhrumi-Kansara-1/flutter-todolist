import 'package:flutter/material.dart';
import './task_tile.dart';
import '../models/task.dart';

class TasksList extends StatelessWidget {   

  final List<Task> ?taskList;
  final Function({int index, bool ?checkboxState}) ?toggleCheckboxState;
  TasksList({this.taskList, this.toggleCheckboxState});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return TaskTile(
        taskTitle: taskList![index].title,
        toggleCheckboxState: (bool ?checkboxState){ 
          toggleCheckboxState!(index: index, checkboxState: checkboxState);
        },
        isChecked: taskList![index].isDone,
      ); 
    },
    itemCount: taskList?.length,
    );
  }
}
