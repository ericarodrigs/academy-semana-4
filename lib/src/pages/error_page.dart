import 'package:flutter/material.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({Key? key}) : super(key: key);

  static const String routeName = '/error';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: const Center(
                  child: Text("Alguma coisa deu errado. Tente recomeçar.",
                      style: TextStyle(fontSize: 24))),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/home');
              },
              child: const Text("Recomeçar"),
              style: ElevatedButton.styleFrom(primary: Colors.red))
        ],
      ),
    );
  }
}
