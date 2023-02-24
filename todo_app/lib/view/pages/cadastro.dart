import 'package:flutter/material.dart';

class Cadastro extends StatefulWidget {
  const Cadastro({
    super.key,
  });

  @override
  State<Cadastro> createState() => _Cadastro();
}

class _Cadastro extends State<Cadastro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        constroiContainer(),
        constroiContainer(),
        constroiContainer(),
        constroiContainer(),
        constroiContainerMenor(),
      ],
    ));
  }
}

Widget constroiContainer() {
  return Container(
    margin: const EdgeInsets.all(100),
    padding: const EdgeInsets.all(100),
    decoration: const BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.all(Radius.circular(10)),
    ),
  );
}

Widget constroiContainerMenor() {
  return Container(
    margin: const EdgeInsets.all(100),
    padding: const EdgeInsets.all(100),
    decoration: const BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.all(Radius.circular(10)),
    ),
  );
}
