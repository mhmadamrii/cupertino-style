import 'package:cupertino_style/models/todo.dart';
import 'package:cupertino_style/screens/create_todo_screen.dart';
import 'package:cupertino_style/widgets/basics/todo_card.dart';
import 'package:flutter/cupertino.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Todo> _todos = [];
  void _toggleTodoCompletion(Todo todo, bool isCompleted) {
    setState(() {
      todo.isCompleted = isCompleted;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: const Text(
          "Todo List",
        ),
        trailing: CupertinoButton(
          child: const Icon(
            CupertinoIcons.add,
          ),
          onPressed: () async {
            final newTodo = await Navigator.push(
              context,
              CupertinoPageRoute(
                builder: (context) => const CreateTodoScreen(),
              ),
            );

            if (newTodo != null) {
              setState(() {
                _todos.add(newTodo);
              });
            }
          },
        ),
      ),
      child: ListView.builder(
        itemCount: _todos.length,
        itemBuilder: (context, index) {
          return TodoCard(
            todo: _todos[index],
            onToggle: (bool isCompleted) {
              _toggleTodoCompletion(_todos[index], isCompleted);
            },
          );
        },
      ),
    );
  }
}
