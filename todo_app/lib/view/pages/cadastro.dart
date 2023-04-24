import 'package:flutter/material.dart';

class Cadastro extends StatefulWidget {
  const Cadastro({
    super.key,
  });

  @override
  State<Cadastro> createState() => _Cadastro();
}

class _Cadastro extends State<Cadastro> {
  final TextEditingController _nomeController = TextEditingController();
  final GlobalKey<FormState> _nomekey = GlobalKey();
  final TextEditingController _emailController = TextEditingController();
  final GlobalKey<FormState> _emailkey = GlobalKey();
  final TextEditingController _senhaController = TextEditingController();
  final GlobalKey<FormState> _senhakey = GlobalKey();
  final TextEditingController _confirmarsenhaController =
      TextEditingController();
  final GlobalKey<FormState> _confirmarsenhakey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(169, 1, 247, 1),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 150,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        bottom: 20,
                      ),
                      child: Text(
                        'Vamos Começar!',
                        style: TextStyle(
                          fontFamily: 'Montserrat-SemiBold',
                          fontSize: 28,
                          color: Color.fromRGBO(255, 255, 255, 1),
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 40,
                            width: 300,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Form(
                              key: _nomekey,
                              child: Padding(
                                padding: const EdgeInsets.all(12),
                                child: Text(
                                  'Nome',
                                  style: TextStyle(
                                    fontFamily: ' Tahoma',
                                    fontSize: 15,
                                    color: Color.fromRGBO(49, 1, 185, 1),
                                  ),
                                ),
                              ),
                              //  TextField(
                              //    controller: _nomeController,
                              //   key: _nomekey,
                              // ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 40,
                            width: 300,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Form(
                              key: _emailkey,
                              child: Padding(
                                padding: const EdgeInsets.all(12),
                                child: Text('E-mail',
                                    style: TextStyle(
                                      fontFamily: 'Tahoma',
                                      fontSize: 15,
                                      color: Color.fromRGBO(49, 1, 185, 1),
                                    )
                                    // controller: _emailController,
                                    //  key: _emailkey,
                                    ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 40,
                            width: 300,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Form(
                                key: _senhakey,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(12),
                                      child: Text(
                                        'Senha',
                                        style: TextStyle(
                                          fontFamily: 'Tahoma',
                                          fontSize: 15,
                                          color: Color.fromRGBO(49, 1, 185, 1),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(12),
                                      child: Icon(
                                        Icons.emoji_emotions,
                                        size: 18,
                                      ),
                                    ),
                                  ],
                                )
                                // TextField(
                                //  controller: _senhaController,
                                //  key: _senhakey,
                                ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 40,
                            width: 300,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Form(
                              key: _confirmarsenhakey,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(12),
                                    child: Text(
                                      'Confirmar senha',
                                      style: TextStyle(
                                        fontFamily: ' Tahoma',
                                        fontSize: 15,
                                        color: Color.fromRGBO(49, 1, 185, 1),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(12),
                                    child: Icon(
                                      Icons.emoji_emotions,
                                      size: 18,
                                    ),
                                  ),
                                ],
                              ),
                              // TextField(
                              //   controller: _confirmarsenhaController,
                              //   key: _confirmarsenhakey,
                              // ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 45),
                      child: ElevatedButton(
                        onPressed: null,
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                            Color.fromRGBO(49, 1, 185, 1),
                          ),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: BorderSide(width: 2, color: Colors.white),
                            ),
                          ),
                        ),
                        child: Text(
                          'Cadastrar',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Montserrat-SemiBold',
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 185,
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Column(
                        children: [
                          Divider(
                            color: Colors.white,
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Ja possui cadastro?',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Tahoma',
                                  fontSize: 18,
                                ),
                              ),
                              TextButton(
                                onPressed: null,
                                child: Text(
                                  'Entrar',
                                  style: TextStyle(
                                    color: Color.fromRGBO(255, 214, 0, 1),
                                    fontFamily: 'Tahoma',
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
