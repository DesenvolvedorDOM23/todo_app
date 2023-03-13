import 'package:flutter/material.dart';
import './view/pages/login_page.dart';
import 'package:provider/provider.dart';
import './presenter/login_presenter.dart';
import 'model/data/user_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';
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
      ],
      child: MaterialApp(
        routes: {
          '/login': (context) => Login(),
          '/cadastro': ((context) => Cadastro())
        },
      ),
    );
  }
}
