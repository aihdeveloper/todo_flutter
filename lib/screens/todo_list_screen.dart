import 'package:flutter/material.dart';
import 'dart:convert';

import 'package:todo_flutter/models/todo.dart';
import 'package:todo_flutter/widgets/todo_add.dart';
import 'package:todo_flutter/widgets/todo_list.dart';

class TodoListScreen extends StatefulWidget {
  TodoListScreen({Key? key}) : super(key: key);

  @override
  State<TodoListScreen> createState() => _TodoListScreenState();
}

class _TodoListScreenState extends State<TodoListScreen> {
  List<Todo> todos = [];

  onToggleTodo(bool isChecked, Todo todo) {
    setState(() {
      todo.isDone = isChecked;
    });
  }

  _addTodo() async {
    String jsonText =
        '{ "tasks": [{ "title": "Task 1"}, { "title": "Task 2"},{"title": "Task 3" }, {"title": "Task 4" }]}';
    var tod = json.decode(jsonText)['tasks'];
    // print(tod);
    tod.forEach((task) {
      print(task['title']);
      setState(() {
        Todo(title: task['title']);
      });
    });
    final todo = await showDialog(
        context: context,
        builder: (BuildContext context) {
          return TodoAdd();
        });
    if (todo != null) {
      setState(() {
        todos.add(todo);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo List'),
      ),
      body: TodoList(
        todos: todos,
        onToggleTodo: onToggleTodo,
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => _addTodo(),
      ),
    );
  }
}
