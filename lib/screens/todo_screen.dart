import 'package:cupertino_style/models/todo_model.dart';
import 'package:cupertino_style/providers/todo_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TodoScreen extends ConsumerStatefulWidget {
  const TodoScreen({super.key});

  @override
  ConsumerState<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends ConsumerState<TodoScreen> {
  @override
  Widget build(BuildContext context) {
    final todos = ref.watch(todoProvider);

    void checkTodo(Todo todo, bool isCompleted) {
      final updatedTodo = Todo(
        id: todo.id,
        title: todo.title,
        description: todo.description,
        date: todo.date,
        isCompleted: isCompleted,
      );

      final todos = ref.read(todoProvider);
      final updatedTodos = todos.map((todo) {
        if (todo.id == updatedTodo.id) {
          return updatedTodo;
        }
        return todo;
      }).toList();

      ref.read(todoProvider.notifier).state = updatedTodos;
    }

    print(ref.watch(todoProvider).toString());

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "List of my todos",
        ),
      ),
      body: Column(
        children: todos.map((todo) {
          return ListTile(
            title: Text(todo.title),
            subtitle: Text(todo.description),
            trailing: Checkbox(
              value: todo.isCompleted,
              onChanged: (val) {
                if (val == null) {
                  return;
                }
                checkTodo(todo, val);
              },
            ),
          );
        }).toList(),
      ),
    );
  }
}
