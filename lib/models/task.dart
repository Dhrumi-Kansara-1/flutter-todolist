class Task {
  final String title;
  bool isDone;

  Task({this.title="", this.isDone=false});

  void toggleisDone(bool ?value) {
    isDone=value!;
  }
}