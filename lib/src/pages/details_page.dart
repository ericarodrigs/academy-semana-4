import 'package:flutter/material.dart';
import 'package:navigation/src/design_system/atoms/e_text_h3.dart';
import '../design_system/atoms/e_text_h1.dart';
import '../design_system/atoms/e_text_h2.dart';
import '../design_system/atoms/e_text_h5.dart';
import '../design_system/atoms/e_text_h6.dart';
import '../model/series.dart';

class DetailsPage extends StatelessWidget {
  static const String routeName = '/details';

  const DetailsPage({Key? key, required this.series}) : super(key: key);
  final Series series;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Detalhes"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
                child: Container(
              margin: const EdgeInsets.all(16),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ETextH1(textH1: '${series.title} ID: ${series.id}'),
                    ETextH6(textH6: series.description),
                    const SizedBox(
                      height: 32,
                    ),
                    const ETextH2(textH2: 'Classificação'),
                    ETextH6(textH6: series.moreInformation!),
                  ]),
            ))
          ],
        ));
  }
}
