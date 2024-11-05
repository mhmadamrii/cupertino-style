// create todo model

class Todo {
  final int id;
  final String title;
  final String description;
  final String date;
  bool isCompleted = false;

  Todo({
    required this.id,
    required this.title,
    required this.description,
    required this.date,
    required this.isCompleted,
  });
}
