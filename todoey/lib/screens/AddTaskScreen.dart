import 'package:flutter/material.dart';
import 'package:todoey/Models/Tasks.dart';
import 'package:todoey/utilities/constants.dart';

class AddTaskScreen extends StatelessWidget {
  AddTaskScreen({required this.callBack});

  final ValueChanged callBack;

  String value = "";

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff757575),
      child: Container(
        padding: const EdgeInsets.all(30.0),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius:
              BorderRadius.only(topLeft: kRadius20, topRight: kRadius20),
        ),
        child: Column(
          children: [
            const Text(
              'Add Task',
              style: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 30.0,
                fontWeight: FontWeight.w400,
              ),
            ),
            TextField(
              textAlign: TextAlign.center,
              onChanged: (newValue) {
                value = newValue;
              },
              decoration: const InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    style: BorderStyle.solid,
                    color: Colors.lightBlueAccent,
                    width: 3,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 25.0,
            ),
            Row(
              children: [
                Expanded(
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.lightBlueAccent,
                    ),
                    onPressed: () {
                      callBack(
                        Task(name: value),
                      );
                      Navigator.pop(context);
                    },
                    child: const SizedBox(
                      height: 25.0,
                      child: Center(
                        child: Text(
                          'Add',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
