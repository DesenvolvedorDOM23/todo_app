import 'package:flutter/material.dart';

class Cadastropresente extends ChangeNotifier {
  final TextEditingController nomeController = TextEditingController();
  final GlobalKey<FormState> nomekey = GlobalKey();
  final TextEditingController emailController = TextEditingController();
  final GlobalKey<FormState> emailkey = GlobalKey();
  final TextEditingController senhaController = TextEditingController();
  final GlobalKey<FormState> senhakey = GlobalKey();
  final TextEditingController confirmarsenhaController =
      TextEditingController();
  final GlobalKey<FormState> confirmarsenhakey = GlobalKey();
}
