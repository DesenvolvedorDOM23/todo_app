// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:todo_app/model/data/repository.dart';
import 'package:todo_app/presenter/listagem_presenter.dart';
import './view/pages/listagem.dart';
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
  runApp(MyApp());
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
        Provider(
          create: (_) => TodoRepository(),
        ),
        ChangeNotifierProvider<ListagemPresenter>(
            create: (context) =>
                ListagemPresenter(context.read<TodoRepository>()))
        ChangeNotifierProvider(
          create: (context) => LoginPresenter(
            context.read(),
          ),
        ),
      ],
      child: MaterialApp(
        routes: {
          '/': (context) => Login(),
          '/cadastro': ((context) => Cadastro()),
          '/cadastroComSucesso': (context) => Register(),
          '/lista': ((context) => Listagem()),
          '/createTodo': ((context) => CreateTodo()),
        },

      ),
    );
  }
}
