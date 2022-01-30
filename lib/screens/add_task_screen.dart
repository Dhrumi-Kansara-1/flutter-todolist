import 'package:flutter/material.dart'; 
import 'package:provider/provider.dart';
import '../models/task_provider.dart';


class AddTaskScreen extends StatelessWidget {

  String taskTitle="";   
  
  @override
  Widget build(BuildContext context) {

    void addTask() {
      print(addTask);
      Provider.of<TaskProvider>(context, listen: false).addTask(taskTitle);
      Navigator.pop(context);
    }

    return Container(
      color: Color(0xFF757575),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                color: Colors.lightBlueAccent,
              ),
            ),
            TextField(
              onChanged: (newValue){
                taskTitle=newValue;
              },
              autofocus: true,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide:
                      BorderSide(color: Colors.lightBlueAccent, width: 4),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide:
                      BorderSide(color: Colors.lightBlueAccent, width: 4),
                ),
                border: UnderlineInputBorder(
                  borderSide:
                      BorderSide(color: Colors.lightBlueAccent, width: 4),
                ),
              ),
            ),
            SizedBox(height: 5,),
            TextButton(
              onPressed: (){
                addTask();
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.lightBlueAccent),
                foregroundColor: MaterialStateProperty.all(Colors.white),
              ),
              child: Text(
                'Add',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400
                ),

              ),
            ),
          ],
        ),
      ),
    );
  }
}
