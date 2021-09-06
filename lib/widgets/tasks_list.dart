import 'package:flutter/material.dart';
import 'package:mytask/models/task.dart';
import 'tasks_tile_card.dart';

class TasksList extends StatefulWidget {
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(name: 'Learn flutter'),
    Task(name: 'Lecture student'),
    Task(name: 'Go to gym'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.symmetric(vertical: 20.0),
      itemBuilder: (context, index) {
        return ListsTileCard(
            listTitle: tasks[index].name,
            isChecked: tasks[index].isDone,
            checkBoxCallBack: (checkboxState) {
              setState(() {
                tasks[index].toggleDone();
              });
            });
      },
      itemCount: tasks.length,
    );
  }
}


// (
//       padding: EdgeInsets.symmetric(vertical: 20.0),
//       children: [
//         ListsTileCard(),
//         ListsTileCard(),
//         ListsTileCard(),
//       ],
//     );