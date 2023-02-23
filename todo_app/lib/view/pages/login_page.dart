import 'package:flutter/material.dart';
import '../widgets/widigetLogi.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(169, 1, 247, 1),
      body: SafeArea(
        child: SingleChildScrollView(
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
              Widigetlogin(),
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
      ),
    );
  }
}
