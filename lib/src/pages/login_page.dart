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
    return Scaffold(
      body: Form(
        key: formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.all(16),
              child: ETextField(
                labelText: 'E-mail',
                textInputAction: TextInputAction.next,
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'E-mail não pode ser vazio';
                  }
                  return null;
                },
                keyboardType: TextInputType.emailAddress,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(16),
              child: ETextField(
                labelText: 'Senha',
                textInputAction: TextInputAction.done,
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Senha não pode ser vazia';
                  }
                  return null;
                },
                obscureText: true,
              ),
            ),
            EElevatedButton(
                onPressed: () async {
                  if (formKey.currentState!.validate()) {
                    debugPrint('cadastro realizado');
                    await Navigator.of(context).pushReplacementNamed('/home') ??
                        false;
                  } else {
                    debugPrint(
                        'erro ao cadastrar, verifique os campos e tente novamente');
                  }
                },
                color: Colors.blue,
                text: 'Login')
          ],
        ),
      ),
    );
  }
}
