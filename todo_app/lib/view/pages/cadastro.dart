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
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
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
                        child: TextField(
                          controller: _emailController,
                          key: _emailkey,
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
                        child: TextField(
                          controller: _senhaController,
                          key: _senhakey,
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
                        key: _confirmarsenhakey,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  )),
                  child: Text(
                    'Cadastrar',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Montserrat-SemiBold',
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
