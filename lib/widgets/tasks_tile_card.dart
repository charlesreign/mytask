import 'package:flutter/material.dart';

class ListsTileCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text('This is a new Task'),
        trailing: Checkbox(
          value: false,
          onChanged: null,
        ),
      ),
    );
  }
}