import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('Buy Milk'),
      trailing: Checkbox(
        fillColor:
            MaterialStateProperty.all(Colors.lightBlueAccent),
        side: const BorderSide(
          color: Colors.black,
          width: 1.5,
        ),
        value: false,
        onChanged: (bool? value) {},
      ),
    );
  }
}