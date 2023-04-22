import 'package:flutter/material.dart';
import 'package:todo_app/model/data/repository.dart';
import 'package:todo_app/presenter/listagem_presenter.dart';
import './view/pages/listagem.dart';
import 'package:provider/provider.dart';

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
        Provider(
          create: (_) => TodoRepository(),
        ),
        ChangeNotifierProvider<ListagemPresenter>(
            create: (context) =>
                ListagemPresenter(context.read<TodoRepository>()))
      ],
      child: MaterialApp(
        title: 'Todo App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routes: {'/': (context) => const Listagem()},
      ),
    );
  }
}
