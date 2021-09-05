import 'package:flutter/material.dart';
import 'tasks_tile_card.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(vertical: 20.0),
      children: [
        ListsTileCard(),
        ListsTileCard(),
        ListsTileCard(),
      ],
    );
  }
}
