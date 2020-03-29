class Todo{
  int id;
  String title;
  String note;
  DateTime timetoComplete;
  bool completed;
  List<DateTime> reminders;

  Todo(this.id, this.title, this.note, this.completed);

}