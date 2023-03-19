// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/controllers/create_tasks_controller.dart';
import 'package:todo_app/view/pages/listagem.dart';

class CreateTodo extends StatefulWidget {
  const CreateTodo({super.key});
  @override
  State<CreateTodo> createState() => _CreateState();
}

class _CreateState extends State<CreateTodo> {
  final TextEditingController _taskController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();

  final GlobalKey<FormState> _taskKey = GlobalKey();
  final GlobalKey<FormState> _descriptionkKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Consumer<CreateTasksController>(
        builder: (context, controller, child) {
      return SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xFFA901F7),
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
                          color: Color(0xFFFFFFFF),
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
                          color: Color(0xFFFFFFFF),
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
                            fillColor: Color(0xFFFFFFFF),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 0, color: Color(0xFFFFFFFF)),
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
                      const SizedBox(
                        height: 15,
                      ),
                      Container(
                        height: 200,
                        decoration: BoxDecoration(
                          color: Color(0xFFFFFFFF),
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
                              fillColor: Color(0xFFFFFFFF),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 0, color: Color(0xFFFFFFFF)),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15),
                                ),
                              ),
                              floatingLabelAlignment:
                                  FloatingLabelAlignment.start,
                              alignLabelWithHint: true,
                              hintText:
                                  'Escreva uma descrição para sua tarefa.',
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
                      InkWell(
                        onTap: () {
                          controller.changesColor('0xFFFFF2CC');
                        },
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1.0, color: Color(0xFFFFFFFF)),
                              color: Color(0xFFFFEB3B).withOpacity(
                                  controller.colorSelected == '0xFFFFF2CC'
                                      ? 1
                                      : 0.5),
                              borderRadius: BorderRadius.circular(25)),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          controller.changesColor('0xffFFD9F0');
                        },
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1.0, color: Color(0xFFFFFFFF)),
                              color: Color(0xFFE91E63).withOpacity(
                                  controller.colorSelected == '0xffFFD9F0'
                                      ? 1
                                      : 0.5),
                              borderRadius: BorderRadius.circular(25)),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          controller.changesColor('0xFFE8C5FF');
                        },
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1.0, color: Color(0xFFFFFFFF)),
                              color: Color(0xFF9C27B0).withOpacity(
                                  controller.colorSelected == '0xFFE8C5FF'
                                      ? 1
                                      : 0.5),
                              borderRadius: BorderRadius.circular(25)),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          controller.changesColor('0xFFCAFBFF');
                        },
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1.0, color: Color(0xFFFFFFFF)),
                              color: Colors.blue.withOpacity(
                                  controller.colorSelected == '0xFFCAFBFF'
                                      ? 1
                                      : 0.5),
                              borderRadius: BorderRadius.circular(25)),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          controller.changesColor('0xFFE3FFE6');
                        },
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1.0, color: Color(0xFFFFFFFF)),
                              color: Colors.green.withOpacity(
                                  controller.colorSelected == '0xFFE3FFE6'
                                      ? 1
                                      : 0.5),
                              borderRadius: BorderRadius.circular(25)),
                        ),
                      ),
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
                          color: Color(0xFFFFFFFF),
                        ),
                        onPressed: () {
                          Navigator.of(context).pushNamed('/Lista');
                          //TODO: aguardando o merge com a tela de listagem
                        },
                      ),
                      IconButton(
                        iconSize: 90,
                        icon: Icon(
                          Icons.check_rounded,
                          color: Color(0xFFFFFFFF),
                        ),
                        onPressed: () {
                          //TODO: aguardando o merge com a tela de listagem
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
    });
  }
}
