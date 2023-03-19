import 'package:flutter/material.dart';
class TodoList extends StatefulWidget {
  const TodoList({super.key});

  @override
  State<TodoList> createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SizedBox(
        width:double.infinity,
        height:double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                  ),
              ),
              SizedBox(height: 10),
                TextField(
                  obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Senha',
                  border: OutlineInputBorder(),
                  ),
              ),
              //SizedBox(height: 15),
              //RaisedButton(onPressed:() {},
               //child: Text('Entrar'),
               //)
              ],
            ),
        ),
      ),
    );
  }
}