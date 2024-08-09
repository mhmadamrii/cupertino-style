import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddTaskModal extends StatelessWidget {
  final TextEditingController _taskController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.5,
      child: CupertinoPageScaffold(
        child: Padding(
          padding: const EdgeInsets.all(
            16.0,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Icon(
                    Icons.abc_rounded,
                  ),
                ],
              ),
              CupertinoTextField(
                placeholder: 'Task Title',
                controller: _taskController,
              ),
              const SizedBox(
                height: 10.5,
              ),
              Row(
                children: [
                  Expanded(
                    child: CupertinoButton.filled(
                      child: Text("Add Task"),
                      onPressed: () {},
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
