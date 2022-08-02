import 'package:flutter/material.dart';
import 'package:navigation/src/design_system/molecules/e_card.dart';
import 'package:navigation/src/model/series.dart';
import 'package:navigation/src/pages/error_page.dart';

import 'details_page.dart';

class HomePage extends StatelessWidget {
  static const String routeName = '/home';

  HomePage({Key? key}) : super(key: key);

  final Series thisIsUs = Series(
      'assets/cover_this_is_us.jpeg',
      'This Is Us',
      'A história da família Pearson começa em 1979, no dia que os '
          'trigêmeos Jack, Kate e Randall chegam em casa da maternidade. '
          'Revelações sobre os pais Jack e Rebecca surgem nos momentos '
          'de amor, mas também de dor, e moldam para sempre a vida de todos.',
      moreInformation: '8.7/10 - Drama');

  final Series friends = Series(
      'assets/cover_friends.jpg',
      'Friends',
      'Seis amigos, três homens e três mulheres, enfrentam a vida e os amores '
          'em Nova York e adoram passar o tempo livre na cafeteria Central Perk.',
      moreInformation: '8.9/10 - Comédia');

  final Series strangerThings = Series(
      'assets/cover_stranger_things.jpg',
      'Stranger Things',
      'Stranger Things é uma série de televisão via streaming estadunidense '
          'dos gêneros ficção científica, terror, suspense e drama adolescente, '
          'criada, escrita e dirigida pelos irmãos Matt e Ross Duffer para a '
          'plataforma Netflix. Os irmãos Duffer, Shawn Levy e Dan Cohen são '
          'também os produtores executivos.',
      isPageDetails: false);

  @override
  Widget build(BuildContext context) {
    List<Series> series = <Series>[thisIsUs, friends, strangerThings];

    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Home Page"),
          automaticallyImplyLeading: false,
        ),
        body: ListView.builder(
            itemCount: series.length,
            itemBuilder: (BuildContext context, int index) {
              return ECard(
                  title: series[index].title,
                  description: series[index].description,
                  pathToImage: series[index].pathToImage,
                  onTap: () {
                    series[index].isPageDetails
                        ? Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    DetailsPage(series: series[index])))
                        : Navigator.pushNamed(context, ErrorPage.routeName);
                  });
            }),
      ),
    );
  }
}
