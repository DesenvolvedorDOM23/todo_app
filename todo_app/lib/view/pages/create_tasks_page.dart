// import 'dart:html';

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

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
        // ignore: prefer_const_constructors
        backgroundColor: Color.fromRGBO(169, 1, 247, 1),
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
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(73))),
                    child: Padding(
                      padding: EdgeInsets.only(
                          top: 12, left: 10, bottom: 24, right: 20),
                      child: Image.asset(
                        'assets/images/logo.png',
                        height: 37,
                        width: 39,
                      ),
                    ),
                  ),
                  Padding(
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
                padding: EdgeInsets.all(30),
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
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color.fromRGBO(255, 255, 255, 1),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 0,
                                color: Color.fromARGB(255, 255, 255, 255)),
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
                              color: Color.fromRGBO(49, 1, 185, 1)),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 200,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 255, 255, 1),
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
                            fillColor: Color.fromRGBO(255, 255, 255, 1),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 0,
                                  color: Color.fromRGBO(255, 255, 255, 1)),
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
                padding: EdgeInsets.only(right: 20, left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    colorButton('', color: Color.fromRGBO(255, 242, 204, 1)),
                    colorButton('', color: Color.fromRGBO(255, 217, 240, 1)),
                    colorButton('', color: Color.fromRGBO(232, 197, 255, 1)),
                    colorButton('', color: Color.fromRGBO(202, 251, 255, 1)),
                    colorButton('', color: Color.fromRGBO(227, 255, 230, 1)),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 150),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                      iconSize: 90,
                      icon: Icon(
                        Icons.close_rounded,
                        color: Color.fromRGBO(255, 255, 255, 1),
                      ),
                      onPressed: () {
                        // Navigator.pop(context);
                        // Navigator.of(context).push(MaterialPageRoute(
                        //     builder: (context) => Listagem()));
                      },
                    ),
                    IconButton(
                      iconSize: 90,
                      icon: Icon(
                        Icons.check_rounded,
                        color: Color.fromRGBO(255, 255, 255, 1),
                      ),
                      onPressed: () {
                        // Navigator.of(context).push(MaterialPageRoute(
                        //     builder: (context) => Listagem()));
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
        fixedSize: MaterialStateProperty.all(Size.fromHeight(50)),
        backgroundColor:
            MaterialStateProperty.all((Color.fromRGBO(227, 255, 230, 1))),
        shape: MaterialStateProperty.all(
          CircleBorder(),
        )),
    child: Text(''),
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
