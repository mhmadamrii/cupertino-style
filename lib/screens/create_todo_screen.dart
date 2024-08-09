import 'package:cupertino_style/models/todo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreateTodoScreen extends StatefulWidget {
  const CreateTodoScreen({super.key});

  @override
  State<CreateTodoScreen> createState() => _CreateTodoScreenState();
}

class _CreateTodoScreenState extends State<CreateTodoScreen> {
  final _textController = TextEditingController();

  void _addTodo() {
    if (_textController.text.isNotEmpty) {
      final newTodo = Todo(
        id: DateTime.now().toString(),
        title: _textController.text,
        isCompleted: false,
      );
      print('new todo $newTodo');
      Navigator.pop(context, newTodo); // Pass the created Todo object
    }
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Padding(
        padding: const EdgeInsets.only(
          top: 30.5,
          right: 10.0,
          left: 10.0,
        ),
        child: Column(
          children: [
            CupertinoTextField(
              controller: _textController,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  child: CupertinoButton.filled(
                    child: Text("Create new"),
                    onPressed: () {
                      _addTodo();
                    },
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
