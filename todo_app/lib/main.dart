import 'package:flutter/material.dart';
import 'package:todo_app/presenter/cadastro_presenter.dart';

import 'package:provider/provider.dart';
import './presenter/login_presenter.dart';
import 'model/data/user_repository.dart';

import './view/pages/cadastro.dart';

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
        ChangeNotifierProvider(
          create: (context) => LoginPresenter(
            context.read(),
          ),
        ),
        ChangeNotifierProvider(create: (context) => Cadastropresente())
      ],
      child: MaterialApp(
        routes: {'/': ((context) => Cadastro())},
      ),
    );
  }
}
