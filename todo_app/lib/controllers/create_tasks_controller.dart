import 'package:flutter/material.dart';
import 'package:todo_app/model/data/api/create_tasks_repository.dart';

class CreateTasksController extends ChangeNotifier {
  final CreateTodoRepository createTodoRepository;

  String colorSelected = '';

  CreateTasksController(this.createTodoRepository);

  void changesColor(String novaCor) {
    colorSelected = novaCor;
    notifyListeners();
  }

  void registrarTodo(String title, String description,
      {VoidCallback? success}) {
    createTodoRepository
        .createTodo(title, description, colorSelected)
        .then((created) {
      if (created) {
        success?.call();
      }
    });
  }
}
