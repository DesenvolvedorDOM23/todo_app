import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Widigetlogin extends StatefulWidget {
  @override
  State<Widigetlogin> createState() => _WidigetloginState();
}

class _WidigetloginState extends State<Widigetlogin> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Form(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: TextFormField(
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
                Row(children: [
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
                ]),
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
          ElevatedButton(
            style: ButtonStyle(
                shape: MaterialStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                ),
                backgroundColor:
                    MaterialStateProperty.all(Color.fromRGBO(49, 1, 185, 1))),
            onPressed: () {},
            child: Text(
              "Entrar",
              style: TextStyle(
                fontFamily: "Montserrat-SemiBold",
                fontSize: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
