import 'package:flutter/material.dart';
import 'package:navigation/src/design_system/atoms/e_text_field.dart';

import '../design_system/atoms/e_elevated_button.dart';

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
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: Form(
          key: formKey,
          child: Container(
            margin: const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const ETextField(
                  labelText: 'E-mail',
                  textInputAction: TextInputAction.next,
                  textValidator: 'E-mail não pode ser vazio',
                  keyboardType: TextInputType.emailAddress,
                ),
                const ETextField(
                  labelText: 'Senha',
                  textInputAction: TextInputAction.done,
                  textValidator: 'Senha não pode ser vazia',
                  obscureText: true,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 16),
                  child: EElevatedButton(
                      onPressed: () async {
                        if (formKey.currentState!.validate()) {
                          debugPrint('cadastro realizado');
                          await Navigator.of(context)
                                  .pushReplacementNamed('/home') ??
                              false;
                        } else {
                          debugPrint(
                              'erro ao cadastrar, verifique os campos e tente novamente');
                        }
                      },
                      color: Colors.blue,
                      text: 'Login'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
