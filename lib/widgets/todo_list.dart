import 'package:flutter/material.dart';
import 'package:todo_flutter/models/todo.dart';

class TodoList extends StatelessWidget {
  final List<Todo> todos;
  Function onToggleTodo;

  TodoList({Key? key, required this.todos, required this.onToggleTodo})
      : super(key: key);

  Widget _buildItem(BuildContext context, int index) {
    final todo = todos[index];
    return CheckboxListTile(
        value: todo.isDone,
        title: Text(todo.title!),
        onChanged: (value) => onToggleTodo(value!, todo));
  }

  @override
  Widget build(BuildContext context) {
    return todos.length > 0
        ? ListView.builder(itemBuilder: _buildItem, itemCount: todos.length)
        : const Center(
            child: Text('No todos added yet.'),
          );
  }
}
