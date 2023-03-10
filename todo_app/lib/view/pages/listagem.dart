import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Listagem extends StatefulWidget {
  const Listagem({super.key});

  @override
  State<Listagem> createState() => _ListagemState();
}

class _ListagemState extends State<Listagem> {
  List intemLista = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(169, 1, 247, 1),
      body: Column(
        children: [
          Row(
            children: [
              Stack(
                children: [
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(100))),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5, left: 5),
                    child: Image.asset(
                      'assets/images/logo.png',
                      height: 55,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40, top: 25),
                child: Text(
                  'Suas listagens',
                  style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontSize: 20,
                    fontFamily: "Montserrat-SemiBold",
                  ),
                ),
              ),
            ],
          ),
          /////
          ///
          ///barra de pesquisa!
          ///
          ///
          // Container(
          //   width: MediaQuery.of(context).size.width * 0.94,
          //   padding: const EdgeInsets.only(top: 30, bottom: 15),
          //   child: const TextField(
          //     decoration: InputDecoration(
          //         labelText: 'Busque palavras-chave',
          //         suffixIcon: Icon(Icons.search),
          //         enabledBorder: UnderlineInputBorder(
          //             borderRadius: BorderRadius.all(Radius.circular(15))),
          //         filled: true,
          //         fillColor: Colors.white),
          //   ),
          // ),
          ///
          Column(
            //definir tamanho dessa colum pode ser o melhor caminho pra fixar botao bottom
            children: [
              Container(
                margin: EdgeInsets.only(top: 30),
                width: 300,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Busque palavras-chave',
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Tahoma',
                          color: Color.fromRGBO(49, 1, 185, 1),
                        ),
                      ),
                    ),
                    Icon(
                      Icons.search,
                      color: Color.fromRGBO(49, 1, 185, 1),
                      size: 35,
                    ),
                  ],
                ),
              ),

              ////////////
              ///
              ///final intemLista = List<String> ;
              ///ListView.Builder(
              ///itemcount: itemLista.length
              ///itemBuilder: (contex, index){
              ///return ListTile(
              ///title: Text('${itemLista[index]}')
              ///)
              ///}
              ///
              ///)
              Container(
                margin: EdgeInsets.only(top: 15),
                height: 140,
                width: 300,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 242, 204, 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8, top: 8),
                          child: Text(
                            'Limpar a casa',
                            style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'Montserrat-Bold',
                              color: Color.fromRGBO(49, 1, 185, 1),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5, right: 5),
                          child: GestureDetector(
                              onTap: null,
                              child: Icon(
                                CupertinoIcons.trash,
                                size: 33,
                              )),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8, right: 8),
                      child: Text(
                        'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore ‘erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation',
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Tahoma',
                          color: Color.fromRGBO(49, 1, 185, 1),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15),
                height: 140,
                width: 300,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(199, 255, 203, 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8, top: 8),
                          child: Text(
                            'Pintar cadeira',
                            style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'Montserrat-Bold',
                              color: Color.fromRGBO(49, 1, 185, 1),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5, right: 5),
                          child: GestureDetector(
                              onTap: null,
                              child: Icon(
                                CupertinoIcons.trash,
                                size: 33,
                              )),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8, right: 8),
                      child: Text(
                        'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore ‘erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation',
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Tahoma',
                          color: Color.fromRGBO(49, 1, 185, 1),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15),
                height: 140,
                width: 300,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(232, 197, 255, 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8, top: 8),
                          child: Text(
                            'Fazer um lanche',
                            style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'Montserrat-Bold',
                              color: Color.fromRGBO(49, 1, 185, 1),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5, right: 5),
                          child: GestureDetector(
                              onTap: null,
                              child: Icon(
                                CupertinoIcons.trash,
                                size: 33,
                              )),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8, right: 8),
                      child: Text(
                        'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore ‘erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation',
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Tahoma',
                          color: Color.fromRGBO(49, 1, 185, 1),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 25,
          ),

          //////
          ///botão apresentado ainda não esta configurado corretamente!
          IconButton(
              onPressed: null, //<<<apagar qdo for navegar!
              // onPressed: () {
              //           Navigator.of(context).push(MaterialPageRoute(
              //               builder: (context) => Create()));
              //         },

              ////
              ///fixar bottom center
              icon: Icon(
                CupertinoIcons.add,
                size: 60,
                color: Colors.white,
              )),

          /////
          ///VVVV esse botão ficou fixo, VVVV
          ///porem nao rolou ajustar a area q ele pode expandir ainda
          // Expanded(
          //     child: Align(
          //         alignment: Alignment.bottomCenter,
          //         child: IconButton(
          //             onPressed: null,
          //             icon: Icon(
          //               CupertinoIcons.add,
          //               size: 80,
          //               color: Colors.white,
          //             ))))
        ],
      ),
    );
  }
}
