import 'package:flutter/material.dart';
import 'package:navigation/src/design_system/molecules/e_card.dart';

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
        body: const ECard(
            pathToImage: 'assets/cover_this_is_us.jpeg',
            textH4: 'This Is Us',
            textH6:
                'A história da família Pearson começa em 1979, no dia que os trigêmeos Jack, Kate e Randall chegam em casa da maternidade. Revelações sobre os pais Jack e Rebecca surgem nos momentos de amor, mas também de dor, e moldam para sempre a vida de todos.'));
  }
}
