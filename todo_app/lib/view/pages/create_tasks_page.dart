// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:todo_app/view/pages/todo_list_page.dart';

class Create extends StatefulWidget {
  const Create({super.key});

  @override
  State<Create> createState() => _CreateState();
}

class _CreateState extends State<Create> {
  final TextEditingController _taskController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();

  final GlobalKey<FormState> _taskKey = GlobalKey();
  final GlobalKey<FormState> _descriptionkKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFA901F7),
        // backgroundColor: const Color.fromRGBO(169, 1, 247, 1),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 73,
                    width: 73,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(73))),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 12, left: 10, bottom: 24, right: 20),
                      child: Image.asset(
                        'assets/images/logo.png',
                        height: 37,
                        width: 39,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 10,
                      left: 50,
                      bottom: 20,
                      right: 10,
                    ),
                    child: Text(
                      'Nova Tarefa',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Montserrat-Bold',
                        color: Colors.white,
                        fontSize: 25,
                        overflow: TextOverflow.fade,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(30),
                child: Column(
                  children: [
                    Form(
                      key: _taskKey,
                      child: TextFormField(
                        controller: _taskController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Inserir uma tarefa';
                          }
                          return null;
                        },
                        decoration: const InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 0, color: Colors.white),
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            ),
                          ),
                          alignLabelWithHint: true,
                          hintText: 'Título da Tarefa',
                          hintMaxLines: 1,
                          hintStyle: TextStyle(
                              fontFamily: 'Tahoma',
                              fontSize: 18,
                              color: Color(0xFF3101B9)),
                        ),
                      ),
                    ),
                    Container(
                      height: 15,
                    ),
                    Container(
                      height: 200,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                      child: Form(
                        key: _descriptionkKey,
                        child: TextFormField(
                          controller: _descriptionController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Inserir uma descrição';
                            }
                            return null;
                          },
                          decoration: const InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 0, color: Colors.white),
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                            ),
                            floatingLabelAlignment:
                                FloatingLabelAlignment.start,
                            alignLabelWithHint: true,
                            hintText: 'Escreva uma descrição para sua tarefa.',
                            hintMaxLines: 10,
                            hintStyle: TextStyle(
                              fontFamily: 'Tahoma',
                              fontSize: 13,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20, left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    colorButton('', color: const Color(0xFFFFF2CC)),
                    colorButton('', color: const Color(0xFFFFD9F0)),
                    colorButton('', color: const Color(0xFFE8C5FF)),
                    colorButton('', color: const Color(0xFFCAFBFF)),
                    colorButton('', color: const Color(0xFFE3FFE6)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 150),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                      iconSize: 90,
                      icon: const Icon(
                        Icons.close_rounded,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => TodoList()));
                      },
                    ),
                    IconButton(
                      iconSize: 90,
                      icon: const Icon(
                        Icons.check_rounded,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => TodoList()));
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget colorButton(String text, {Color color = Colors.grey}) {
  return ElevatedButton(
    style: ButtonStyle(
        fixedSize: MaterialStateProperty.all(const Size.fromHeight(50)),
        backgroundColor: MaterialStateProperty.all((const Color(0xFFE3FFE6))),
        shape: MaterialStateProperty.all(
          const CircleBorder(),
        )),
    child: const Text(''),
    onPressed: () {},
  );
}

// Widget actionButton(Widget icon, {Color color = Colors.white}) {
//   return IconButton(
//     iconSize: 90,
//     icon: const Icon(
//       Icons.check_rounded,
//       color: Colors.white,
//     ),
//     onPressed: () {},
//   );
// }
