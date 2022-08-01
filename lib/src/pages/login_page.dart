import 'package:flutter/material.dart';

import 'details_page.dart';
import 'home_page.dart';

class LoginPage extends StatefulWidget {
  static const String routeName = '/login';

  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.all(16),
              child: TextFormField(
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Este campo não pode ser vazio';
                  }
                  return null;
                },
                cursorColor: Colors.black,
                decoration: const InputDecoration(
                  labelText: 'E-mail',
                  labelStyle: TextStyle(color: Colors.black),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 1),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 1),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 2),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(16),
              child: TextFormField(
                obscureText: true,
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Este campo não pode ser vazio';
                  }
                  return null;
                },
                cursorColor: Colors.black,
                decoration: const InputDecoration(
                  labelText: 'Senha',
                  labelStyle: TextStyle(color: Colors.black),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 1),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 1),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 2),
                  ),
                ),
              ),
            ),
            ElevatedButton(
              //TODO resolver problema do voltar no triangulo
                onPressed: () async {
                  if (formKey.currentState!.validate()) {
                    debugPrint("cadastro realizado");
                    await Navigator.of(context).pushReplacementNamed('/home') ??
                        false;
                  } else {
                    debugPrint(
                        "erro ao cadastrar, verifique os campos e tente novamente");
                  }
                },
                child: const Text("Login"))
          ],
        ),
      ),
    );
  }
}
