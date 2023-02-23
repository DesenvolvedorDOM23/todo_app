import 'package:flutter/material.dart';

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
                  Padding(padding: EdgeInsets.only(left: 10)),
                  Text("Esqueceu seu login ou senha ?"),
                  GestureDetector(
                    child: Text("Clique aqui"),
                  )
                ]),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          ElevatedButton(
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
