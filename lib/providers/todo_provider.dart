import 'package:cupertino_style/models/todo_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final todoProvider = StateProvider<List<Todo>>(
  (ref) => [
    Todo(
      id: 1,
      title: 'Buy milk',
      description: 'Buy milk',
      date: '2023-01-01',
      isCompleted: false,
    ),
    Todo(
      id: 2,
      title: 'Buy bread',
      description: 'Buy bread',
      date: '2023-01-02',
      isCompleted: false,
    ),
    Todo(
      id: 3,
      title: 'Buy eggs',
      description: 'Buy eggs',
      date: '2023-01-03',
      isCompleted: false,
    ),
  ],
);
