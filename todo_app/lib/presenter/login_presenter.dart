import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:provider/provider.dart';
import 'dart:convert';
import '../model/data/user_repository.dart';

class LoginPresenter extends ChangeNotifier with Validation {
  final UserRepository userRepository;
  String obscuringCharacter = '*';
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passowordController = TextEditingController();
  final GlobalKey<FormState> formkey = GlobalKey();

  LoginPresenter(
    this.userRepository,
  );

  void login(
    String email,
    String senha,
    VoidCallback? sucess,
    VoidCallback? failure,
  ) async {
    userRepository
        .login(
      email,
      senha,
    )
        .then((value) async {
      if (value != null) {
        var prefs = await SharedPreferences.getInstance();
        prefs.setString(userRepository.KEY_TOKEN, value);
        print(userRepository.KEY_TOKEN);
        sucess?.call();
      } else {
        print("erro ao enviar usuario");
        failure?.call();
      }
    }).catchError((e) {
      print(e);
    });
    notifyListeners();
  }
}

mixin Validation {
  String? isnotEmpety(String? value, [String? message]) {
    if (value!.isEmpty) return message ?? 'campo obrigatório';
  }

  String? hasSixChars(String? value, [String? message]) {
    if (value!.length < 6)
      return message ?? "você deve usar ao menos 6 caracteres";
  }
}
