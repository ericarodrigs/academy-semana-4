import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  static const String routeName = '/home';

  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
        automaticallyImplyLeading: false,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
              width: MediaQuery.of(context).size.width,
              child: const Center(
                  child: Text('Essa é minha tela de home')
              )
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/details');
                },
              child: const Text("Continuar")
          )
        ],
      ),
    );
  }
}
