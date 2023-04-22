import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:todo_app/model/todo.dart';
import '../model/data/repository.dart';

class ListagemPresenter with ChangeNotifier {
  final TodoRepository todoRepository;
  List<Todo> listaDeTodo = <Todo>[];
  ListagemPresenter(this.todoRepository);

  void chamarlistagem() async {
    todoRepository.getList().then((result) async {
      final prefs = await SharedPreferences.getInstance();
      String? token = prefs.getString('token');
      listaDeTodo = result;
    }).catchError((e) {
      debugPrint(e);
    });
    
  }

  void deletarTodo() {
    notifyListeners();
    todoRepository.delete('3').then((result) {
      debugPrint(result.toString());
    });
  }
}
