import 'package:flutter/material.dart';
import 'package:todo_flutter/models/todo.dart';

class TodoAdd extends StatelessWidget {
  final TextEditingController _todoController = TextEditingController();

  TodoAdd({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('New todo'),
      content: TextField(
        controller: _todoController,
        autofocus: true,
      ),
      actions: [
        ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('Cancel')),
        ElevatedButton(
            onPressed: () {
              final todo = Todo(title: _todoController.text);

              _todoController.clear();
              Navigator.of(context).pop(todo);
            },
            child: Text('Add'))
      ],
    );
  }
}
