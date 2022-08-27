
class Task{
  final String name;
  bool isDone = false;

  Task({required this.name, isDone});

  void toggleDone(){
    isDone = !isDone;
  }
}