import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/model/todo.dart';
import '../../presenter/listagem_presenter.dart';

class Listagem extends StatefulWidget {
  const Listagem({super.key});

  @override
  State<Listagem> createState() => _ListagemState();
}

class _ListagemState extends State<Listagem> {
  @override
  Widget build(BuildContext context) {
    List<Todo> listaDeTodo = <Todo>[];
    final listagemPresenter = Provider.of<ListagemPresenter>(context);
    // final listaDeTodo = Provider.of<ListagemPresenter>(context);

    return Scaffold(
        backgroundColor: const Color.fromRGBO(169, 1, 247, 1),
        body: Consumer<ListagemPresenter>(
          builder: (context, listagempresenter, child) {
            return Column(
              children: [
                Row(
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: 80,
                          height: 80,
                          decoration: const BoxDecoration(
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
                    const Padding(
                      padding: EdgeInsets.only(left: 40, top: 25),
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
                Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 25, left: 10, right: 10),
                      child: Container(
                        width: 320,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Padding(
                              padding: EdgeInsets.all(8.0),
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
                    ),
                    const SizedBox(height: 15),
                    SizedBox(
                      width: 320,
                      height: 550,
                      child: SingleChildScrollView(
                        child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: listaDeTodo.length,
                          itemBuilder: (context, index) {
                            listagemPresenter.chamarlistagem();
                            return Container(
                              margin: const EdgeInsets.only(bottom: 15),
                              height: 140,
                              width: 320,
                              decoration: BoxDecoration(
                                color: const Color.fromRGBO(255, 242, 204, 1),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 8, top: 8),
                                        child: Text(
                                          '$index',
                                          style: const TextStyle(
                                            fontSize: 18,
                                            fontFamily: 'Montserrat-Bold',
                                            color:
                                                Color.fromRGBO(49, 1, 185, 1),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 5, right: 5),
                                        child: GestureDetector(
                                            onTap:
                                                null, //deletarTodo, //entrar metodo delete
                                            child: const Icon(
                                              CupertinoIcons.trash,
                                              size: 33,
                                            )),
                                      )
                                    ],
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(left: 8, right: 8),
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
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 20, bottom: 20),
                  child: IconButton(
                      onPressed: null,
                      // onPressed: () {
                      //           Navigator.of(context).push(MaterialPageRoute(
                      //               builder: (context) => Create()));
                      //         },

                      icon: Icon(
                        CupertinoIcons.add,
                        size: 85,
                        color: Colors.white,
                      )),
                ),
              ],
            );
          },
        ));
  }
}
