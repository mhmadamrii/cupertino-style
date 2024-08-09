class Todo {
  final String id;
  final String title;
  bool isCompleted;

  Todo({
    required this.id,
    required this.title,
    required this.isCompleted,
  });

  void toggleCompletion() {
    isCompleted = !isCompleted;
  }

  factory Todo.fromJson(Map<String, dynamic> json) {
    return Todo(
      id: json['id'],
      title: json['title'],
      isCompleted: json['isCompleted'],
    );
  }
}
