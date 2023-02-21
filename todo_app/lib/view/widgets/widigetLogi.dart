import 'package:flutter/material.dart';

class Widigetlogin extends StatefulWidget {
  @override
  State<Widigetlogin> createState() => _WidigetloginState();
}

class _WidigetloginState extends State<Widigetlogin> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Form(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            Container(
              width: 60,
              height: 20,
              child: TextFormField(
                decoration: InputDecoration(hintText: "óla"),
              ),
            )
          ]),
        )
      ],
    );
  }
}
