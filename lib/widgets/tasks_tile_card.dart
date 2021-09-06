import 'package:flutter/material.dart';

class ListsTileCard extends StatelessWidget {
  final bool isChecked;
  final String listTitle;
  final Function checkBoxCallBack;

  ListsTileCard({this.listTitle, this.isChecked, this.checkBoxCallBack});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(
          listTitle,
          style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null,
          ),
        ),
        trailing: Checkbox(
          activeColor: Color(0xFF9C27B0),
          value: isChecked,
          onChanged: checkBoxCallBack,
        ),
      ),
    );
  }
}

// TaskCheckBox(isChecked, (bool checkboxState) {
//           setState(() {
//             isChecked = checkboxState;
//           });
//         }),

// class TaskCheckBox extends StatelessWidget {
//   final bool checkboxState;
//   final Function toggleCheckBoxState;

//   TaskCheckBox(this.checkboxState, this.toggleCheckBoxState);

//   @override
//   Widget build(BuildContext context) {
//     return Checkbox(
//       activeColor: Color(0xFF9C27B0),
//       value: checkboxState,
//       onChanged: toggleCheckBoxState,
//     );
//   }
// }
