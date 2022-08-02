import 'package:flutter/material.dart';

import '../design_system/atoms/e_elevated_button.dart';
import '../design_system/atoms/e_text_h1.dart';
import '../design_system/atoms/e_text_h4.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({Key? key}) : super(key: key);

  static const String routeName = '/error';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            child: Center(child: ETextH1(textH1: '404', color: Colors.red)),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: const Center(
                child: ETextH4(
              textH4: 'Alguma coisa deu errado. Tente recomeçar.',
            )),
          ),
          EElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/home');
              },
              color: Colors.red,
              text: 'Recomeçar')
        ],
      ),
    );
  }
}
