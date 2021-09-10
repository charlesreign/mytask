import 'package:flutter/material.dart';
import 'package:mytask/screens/add_task_screen.dart';
import '../widgets/tasks_list.dart';
import 'package:provider/provider.dart';
import 'package:mytask/models/task_data.dart';

class TasksScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF7B1FA2),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(
                top: 60.0, left: 30.0, right: 30.0, bottom: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  child: Icon(
                    Icons.list,
                    size: 30.0,
                    color: Color(0xFF7B1FA2),
                  ),
                  backgroundColor: Colors.white,
                  radius: 30.0,
                ),
                SizedBox(height: 10.0),
                Text(
                  'myTask',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40.0,
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  '${Provider.of<TaskData>(context).tasks.length} tasks',
                  style: TextStyle(color: Color(0xFFE1BEE7), fontSize: 18.0),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: TasksList(),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) => AddTaskScreen(),
            );
        },
        backgroundColor: Color(0xFFFFC107),
        child: Icon(Icons.add),
      ),
    );
  }
}
