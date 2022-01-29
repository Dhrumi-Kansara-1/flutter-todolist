import 'package:flutter/material.dart'; 

class TaskTile extends StatelessWidget {  

  final bool isChecked;
  final String taskTitle;
  final Function(bool?) ?toggleCheckboxState;

  TaskTile({this.isChecked=false, this.taskTitle="", this.toggleCheckboxState});
 
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(taskTitle, style: TextStyle(decoration: isChecked ? TextDecoration.lineThrough : null),),
      trailing: Checkbox(
      fillColor:
          MaterialStateProperty.all(Colors.lightBlueAccent),
      side: const BorderSide(
        color: Colors.black,
        width: 1.5,
      ),
      value: isChecked,
      onChanged: toggleCheckboxState,
    ),
      // trailing: TaskCheckBox(checkboxState: isChecked, toggleCheckboxState: toggleCheckboxState,),
    );
  }
}

