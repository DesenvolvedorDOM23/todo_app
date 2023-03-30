import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color.fromRGBO(169,1,247,1),
      body: SingleChildScrollView(
        child: Container(
          color: Color.fromRGBO(169, 1, 247, 1),
          padding: const EdgeInsets.only(top: 220),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Cadastro concluído!',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                    ),
                  ),
                ],
              ),
              Container(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacementNamed('/lista');
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        Color.fromARGB(255, 69, 39, 176),
                      ),
                      padding: MaterialStateProperty.all(
                        EdgeInsets.only(
                          right: 15,
                          left: 15,
                        ),
                      ),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(width: 2, color: Colors.white),
                        ),
                      ),
                    ),
                    child: Text(
                      'Começar',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  )
                ],
              ),
              Container(
                height: 230,
              ),
              Container(
                width: double.maxFinite,
                height: 290,
                padding: const EdgeInsets.only(
                  //top: 2,
                  //bottom: 2,
                  left: 10,
                  right: 10,
                ),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(200.0),
                    topRight: Radius.circular(200.0),
                  ),
                ),

                //width: 380,
                //height: 270,
                //child: Image.asset(
                //'assets/images/coruja-image.png'),
                child: Column(
                  children: [
                    Image.asset('assets/images/coruja-image.png'),
                    Text(
                      'Os ventos da progamação estão indo até você',
                      style: TextStyle(
                        color: Color.fromARGB(255, 103, 39, 176),
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
