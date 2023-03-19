import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/controllers/create_tasks_controller.dart';
import 'package:todo_app/model/data/api/create_tasks_repository.dart';
import 'package:todo_app/view/pages/create_tasks_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<CreateTodoRepository>(create: (_) => CreateTodoRepository()),
        ChangeNotifierProvider(
          create: (context) => CreateTasksController(context.read()),
        ),
      ],
      child: MaterialApp(
        title: 'Todo App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routes: {
          '/': (context) => const CreateTodo(),
        },
      ),
    );
  }
}
