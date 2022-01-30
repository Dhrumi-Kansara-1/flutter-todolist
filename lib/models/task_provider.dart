import 'dart:collection';
import 'dart:typed_data';

import 'package:flutter/foundation.dart';
import 'package:todoey/widgets/task_tile.dart';
import './task.dart';

class TaskProvider extends ChangeNotifier {
    List<Task> _taskList = [
    Task(title: 'Buy milk'),
    Task(title: 'Buy chocolate'),
    Task(title: 'Buy ramen')
  ];

  UnmodifiableListView get taskList {
    return UnmodifiableListView(_taskList);
  }

  int get tasksCount {
    return _taskList.length;
  } 
  Task getTask(index) {
    return _taskList[index];
  }

  void addTask(String taskTitle) { 
    _taskList.add(Task(title: taskTitle));
    notifyListeners(); 
  }

  void deleteTask(index) { 
    _taskList.removeAt(index);   
    notifyListeners(); 
  }


  void toggleIsDone(bool ?newCheckboxState, Task task) { 
    task.toggleisDone(newCheckboxState);
    notifyListeners(); 
  }

}