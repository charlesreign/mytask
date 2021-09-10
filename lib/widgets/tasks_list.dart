import 'package:flutter/material.dart';
import 'package:mytask/models/task.dart';
import 'tasks_tile_card.dart';

class TasksList extends StatefulWidget {
  final List<Task> tasks;

  TasksList(this.tasks);

  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.symmetric(vertical: 20.0),
      itemBuilder: (context, index) {
        return ListsTileCard(
            listTitle: widget.tasks[index].name,
            isChecked: widget.tasks[index].isDone,
            checkBoxCallBack: (checkboxState) {
              setState(() {
                widget.tasks[index].toggleDone();
              });
            });
      },
      itemCount: widget.tasks.length,
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