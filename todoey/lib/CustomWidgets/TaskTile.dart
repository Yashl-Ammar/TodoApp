import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String text;
  final ValueChanged CallBack;
  final VoidCallback onlongPress;

  TaskTile({required this.text, required this.CallBack, required this.isChecked, required this.onlongPress });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: onlongPress,
      leading: Text(
        text,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.underline: null,
        ),
      ),
      trailing: Checkbox(
          value: isChecked,
          activeColor: Colors.lightBlueAccent,
          onChanged: CallBack),
    );
  }
}