// import 'dart:html';

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
        backgroundColor: const Color.fromRGBO(169, 1, 247, 1),
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
                    padding: EdgeInsets.all(
                      10,
                    ),
                    child: Text(
                      'Nova Tarefa',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Montserrat-Bold',
                        color: Colors.white,
                        fontSize: 17,
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
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          alignLabelWithHint: true,
                          hintText: 'Título da Tarefa',
                          hintStyle: TextStyle(
                            fontFamily: 'Tahoma',
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 15,
                    ),
                    Form(
                      key: _descriptionkKey,
                      child: TextFormField(
                        controller: _descriptionController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Inserir uma descriçao';
                          }
                          return null;
                        },
                        decoration: const InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 150, horizontal: 600),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          alignLabelWithHint: true,
                          hintText: 'Escreva uma descrição para sua tarefa.',
                          hintStyle: TextStyle(
                            fontFamily: 'Tahoma',
                            fontSize: 6,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
