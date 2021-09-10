import 'package:flutter/material.dart';
import 'package:mytask/models/task.dart';
import 'tasks_tile_card.dart';
import 'package:provider/provider.dart';
import '../models/task_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, taskData, child) {
      return ListView.builder(
        padding: EdgeInsets.symmetric(vertical: 20.0),
        itemBuilder: (context, index) {
          final task = taskData.tasks[index];
          return ListsTileCard(
            listTitle: task.name,
            isChecked: task.isDone,
            checkBoxCallBack: (checkboxState) {
              taskData.updateTask(task);
            },
            longPressCallBack: () {
              taskData.deleteTask(task);
            },
          );
        },
        itemCount: taskData.taskCount,
      );
    });
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