import 'package:flutter/material.dart';
import 'package:todo_flutter/screens/calculator.dart';
import 'package:todo_flutter/screens/login_screen.dart';
import 'package:todo_flutter/screens/todo_list_screen.dart';

class DashBoard extends StatefulWidget {
  DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    // return TodoListScreen();
    return LoginScreen();
  }
}
