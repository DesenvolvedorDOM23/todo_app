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
      body: Column(
        children: [
          Container(
              width: double.maxFinite,
              height: 250,
              padding: EdgeInsets.only(top: 50),
              alignment: Alignment.center,
              color: Colors.white,
              child: Column(
                children: [
                  Image.asset(
                    'asset/images/logo.png',
                    width: 200,
                    height: 180,
                  ),
                  Text("Lovepeople")
                ],
              )),
          SizedBox(
            height: 200,
          ),
          Center(
            child: Text(
              "Que bom que você voltou!",
              style: TextStyle(fontSize: 25, color: Colors.white),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Widigetlogin()
        ],
      ),
    );
  }
}
