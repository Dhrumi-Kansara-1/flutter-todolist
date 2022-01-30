import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/task_provider.dart';

class TaskTile extends StatelessWidget {
  // final bool isChecked;
  // final String taskTitle;
  // final Function(bool?) ?toggleCheckboxState;

  final int index;

  TaskTile({this.index = 0});

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskProvider>(
      builder: (context, taskProvider, child) {
        return ListTile(
          onLongPress: () {
            taskProvider.deleteTask(index);
          },
          title: Text(
            taskProvider.getTask(index).title,
            style: TextStyle(
                decoration: taskProvider.getTask(index).isDone
                    ? TextDecoration.lineThrough
                    : null),
          ),
          trailing: Checkbox(
            fillColor: MaterialStateProperty.all(Colors.lightBlueAccent),
            side: const BorderSide(
              color: Colors.black,
              width: 1.5,
            ),
            value: taskProvider.getTask(index).isDone,
            onChanged: (bool? newCheckboxState) {
              taskProvider.toggleIsDone(
                  newCheckboxState, taskProvider.getTask(index));
            },
          ),
        );
      },
    );
  }
}
