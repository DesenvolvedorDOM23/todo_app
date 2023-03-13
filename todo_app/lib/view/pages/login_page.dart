import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/model/data/user_repository.dart';
import '../../presenter/login_presenter.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(169, 1, 247, 1),
      body: Consumer<LoginPresenter>(
        builder: ((context, loginPresenter, child) {
          return SingleChildScrollView(
            child: Column(
              children: [
                Container(
                    width: double.maxFinite,
                    height: 300,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(200),
                        bottomRight: Radius.circular(200),
                      ),
                    ),
                    child: Column(
                      children: [
                        Padding(padding: EdgeInsets.only(top: 42)),
                        Image.asset(
                          "assets/images/logo.png",
                          width: 200,
                          height: 200,
                        ),
                        Text(
                          "Lovepeople",
                          style: TextStyle(
                              color: Color.fromRGBO(49, 1, 185, 1),
                              fontFamily: "Montserrat-Bold",
                              fontSize: 14),
                        )
                      ],
                    )),
                SizedBox(
                  height: 60,
                ),
                Center(
                  child: Text(
                    "Que bom que você voltou!",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontFamily: "Montserrat-SemiBold"),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Form(
                  key: loginPresenter.formkey,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 10, right: 10),
                        child: TextFormField(
                          controller: loginPresenter.emailController,
                          validator: loginPresenter.isnotEmpety,
                          maxLines: 1,
                          decoration: InputDecoration(
                            hintText: "Email ou CPF",
                            hintStyle: TextStyle(
                              fontFamily: "Tahoma",
                              color: Color.fromRGBO(49, 1, 185, 1),
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10, right: 10),
                        child: TextFormField(
                          obscureText: true,
                          obscuringCharacter: loginPresenter.obscuringCharacter,
                          controller: loginPresenter.passowordController,
                          validator: loginPresenter.hasSixChars,
                          maxLines: 1,
                          decoration: InputDecoration(
                            hintText: "Senha",
                            hintStyle: TextStyle(
                              fontFamily: "Tahoma",
                              color: Color.fromRGBO(49, 1, 185, 1),
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Padding(padding: EdgeInsets.only(left: 14)),
                          Text(
                            "Esqueceu seu login ou senha?",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Tahoma",
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          GestureDetector(
                            onTap: () {
                              print("ok");
                            },
                            child: Text(
                              "Clique aqui",
                              style: TextStyle(
                                color: Color.fromRGBO(255, 214, 0, 1),
                                fontFamily: "Tahoma",
                                fontSize: 16,
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                ElevatedButton(
                  onPressed: () {
                    if (loginPresenter.formkey.currentState!.validate()) {
                      loginPresenter.login(loginPresenter.emailController.text,
                          loginPresenter.passowordController.text, () {
                        //implementar navigator para ir para listagem
                        print("Sucesso");
                      }, () {
                        print("erro");
                        //continuar na mesma tela !!
                      });
                    }
                  },
                  child: Text("Cadastrar"),
                ),
                SizedBox(
                  height: 28,
                ),
                Divider(
                  color: Colors.white,
                ),
                SizedBox(
                  height: 18,
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Padding(padding: EdgeInsets.only(left: 8)),
                  Text(
                    "Não possui cadastro?",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Tahoma",
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      "Clique aqui",
                      style: TextStyle(
                        color: Color.fromRGBO(255, 214, 0, 1),
                        fontFamily: "Tahoma",
                        fontSize: 16,
                      ),
                    ),
                  )
                ]),
              ],
            ),
          );
        }),
      ),
    );
  }
}
