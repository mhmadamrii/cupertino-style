import 'package:cupertino_style/models/todo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TodoCard extends StatelessWidget {
  final Todo todo;
  final ValueChanged<bool> onToggle;

  const TodoCard({
    required this.todo,
    required this.onToggle,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoListTile(
      title: Text(todo.title),
      trailing: CupertinoSwitch(
        value: todo.isCompleted,
        onChanged: onToggle,
      ),
    );
  }
}
