import 'package:flutter/material.dart';
import 'package:navigation/src/route_generator.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      initialRoute: '/login',
      onGenerateRoute: RouteGenerator.onGenerateRoute,
      );
  }
}
