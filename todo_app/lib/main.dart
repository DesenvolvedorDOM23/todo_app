import 'package:flutter/material.dart';
import 'package:todo_app/view/pages/register_page.dart';
import 'package:todo_app/view/pages/create_tasks_page.dart';
import 'package:todo_app/view/pages/todo_list_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) =>  const Register(),
        '/todoList':(context) =>  TodoList(),
      },
    );
  }
}
