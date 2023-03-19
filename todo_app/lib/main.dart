// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/controllers/create_tasks_controller.dart';
import 'package:todo_app/model/data/api/create_tasks_repository.dart';
import 'package:todo_app/view/pages/create_tasks_page.dart';
import 'package:todo_app/view/pages/listagem.dart';
import 'package:todo_app/view/pages/login_page.dart';
import './presenter/login_presenter.dart';
import 'model/data/user_repository.dart';
import './view/pages/cadastro.dart';
import 'package:todo_app/view/pages/register_page.dart';

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
        Provider<UserRepository>(
          create: (_) => UserRepository(),
        ),
        Provider<CreateTodoRepository>(create: (_) => CreateTodoRepository()),
        ChangeNotifierProvider(
          create: (context) => CreateTasksController(context.read()),
        ),
        ChangeNotifierProvider(
          create: (context) => LoginPresenter(
            context.read(),
          ),
        ),
      ],
      child: MaterialApp(
        routes: {
          '/login': (context) => Login(),
          '/cadastro': ((context) => Cadastro()),
          '/cadastrocomplete': (context) =>  const Register(),
          '/lista': ((context) => Listagem()),
          '/regristrar': ((context) => CreateTodo()),
      
        },
      ),
    );
  }
}
