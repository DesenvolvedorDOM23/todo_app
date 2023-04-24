// ignore_for_file: unused_local_variable
import 'dart:convert';
import 'package:http/http.dart' as http;

class CreateTodoRepository {
  String baseUrl = "https://lovepeople-todo.onrender.com/api/";

  Future createTodo(String titulo, String descricao, String cor) {
    Uri uri = Uri.parse('${baseUrl}todos');
    return http.post(
      uri,
      body: {
        "data": {
          "title": titulo,
          "description": descricao,
          "color": cor,
        }
      },
    ).then((value) {
      if (value.statusCode == 200) {
        Map json = jsonDecode(value.body);
        return json['data'];
      }
      return null;
    });
  }
}
