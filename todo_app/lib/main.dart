import 'package:flutter/material.dart';
import './view/pages/create_tasks_page.dart';

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
      routes: {
        '/': (context) => const Create(),
      },
    );
  }
}