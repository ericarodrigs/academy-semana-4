import 'package:flutter/material.dart';
import '../model/series.dart';

class DetailsPage extends StatelessWidget {
  static const String routeName = '/details';

  const DetailsPage({Key? key, required this.series}) : super(key: key);
  final Series series;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Details"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Center(child: Text(series.title))),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/error');
              },
              child: const Text("Continuar"))
        ],
      ),
    );
  }
}
