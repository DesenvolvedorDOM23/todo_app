import 'package:flutter/material.dart';
import 'package:todo_app/presenter/cadastro_presenter.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/model/data/user_repository.dart';
import 'package:todo_app/view/pages/listagem.dart';
import 'package:todo_app/view/pages/login_page.dart';

class Cadastro extends StatefulWidget {
  Cadastro({
    super.key,
  });

  @override
  State<Cadastro> createState() => _Cadastro();
}

class _Cadastro extends State<Cadastro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(169, 1, 247, 1),
        body: Consumer<Cadastropresente>(
            builder: (context, cadastropresente, child) {
          return SingleChildScrollView(
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
                                key: cadastropresente.nomekey,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      hintText: 'Nome',
                                      hintStyle: TextStyle(
                                        fontFamily: 'Tahoma',
                                        color: Color.fromRGBO(49, 1, 185, 1),
                                      ),
                                      filled: true,
                                      fillColor: Colors.white,
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                        Radius.circular(8),
                                      ))),
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
                                  key: cadastropresente.emailkey,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                        hintText: 'E-mail',
                                        hintStyle: TextStyle(
                                          fontFamily: 'Tahoma',
                                          color: Color.fromRGBO(49, 1, 183, 1),
                                        ),
                                        filled: true,
                                        fillColor: Colors.white,
                                        enabledBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                          Radius.circular(8),
                                        ))),
                                  ),
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                                height: 40,
                                width: 300,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Form(
                                    key: cadastropresente.senhakey,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        SizedBox(
                                          width: 250,
                                          child: TextFormField(
                                              decoration: InputDecoration(
                                            hintText: 'Senha',
                                            hintStyle: TextStyle(
                                              fontFamily: 'Tahoma',
                                              color:
                                                  Color.fromRGBO(49, 1, 183, 1),
                                            ),
                                            filled: true,
                                            fillColor: Colors.white,
                                            enabledBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                              Radius.circular(8),
                                            )),
                                          )),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(12),
                                          child: Icon(
                                            Icons.emoji_emotions,
                                            size: 18,
                                          ),
                                        ),
                                      ],
                                    ))),
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
                                key: cadastropresente.confirmarsenhakey,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(
                                      width: 250,
                                      child: TextFormField(
                                          decoration: InputDecoration(
                                              hintText: 'Confirmar Senha',
                                              hintStyle: TextStyle(
                                                fontFamily: 'Tahoma',
                                                color: Color.fromRGBO(
                                                    49, 1, 183, 1),
                                              ),
                                              filled: true,
                                              fillColor: Colors.white,
                                              enabledBorder: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                Radius.circular(8),
                                              )))),
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
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 45),
                        child: ElevatedButton(
                          onPressed: () async {},
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
                                  onPressed: () {
                                    var todo = Navigator.pushNamed(
                                      context,
                                      'Listagem',
                                    ).then(
                                      (value) {
                                        if (value != null) {}
                                      },
                                    );
                                  },
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
          );
        }));
  }
}
