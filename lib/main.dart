import 'package:flutter/material.dart';
import 'package:mytask/models/task_data.dart';
import 'screens/task_screen.dart';
import 'package:provider/provider.dart';

main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
