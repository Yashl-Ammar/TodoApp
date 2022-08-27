import 'package:flutter/material.dart';
import 'package:todoey/CustomWidgets/TaskTile.dart';
import 'package:todoey/Models/Tasks.dart';

class TaskList extends StatefulWidget {
  TaskList({required this.tasks, required this.onlongPress});

  List<Task> tasks;
  final ValueChanged onlongPress;

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {

  late List<Task> tasks;

  void update(){
    tasks = widget.tasks;
  }

  @override
  void initState() {
    super.initState();
    update();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return TaskTile(
        text: tasks[index].name,
        isChecked: tasks[index].isDone,
        CallBack: (value) {
          setState(() {
            tasks[index].toggleDone();
          });
        },
        onlongPress: (){
          widget.onlongPress(index);
        },
      );
    },
      itemCount: tasks.length,
    );
  }
}

/*(value){
setState(() {
_isChecked = value;
});*/
