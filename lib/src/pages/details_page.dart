import 'package:flutter/material.dart';
import 'package:navigation/src/pages/login_page.dart';

class DetailsPage extends StatelessWidget {

  static const String routeName = '/details';

  const DetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Details"),
        automaticallyImplyLeading: false,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
              width: MediaQuery.of(context).size.width,
              child: const Center(
                  child: Text('Somente um teste')
              )
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/error');
                },
              child: const Text("Continuar")
          )
        ],
      ),
    );
  }
}
