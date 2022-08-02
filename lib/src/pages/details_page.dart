import 'package:flutter/material.dart';
import '../design_system/atoms/e_text_h1.dart';
import '../design_system/atoms/e_text_h2.dart';
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
        body: Container(
          margin: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ETextH1(textH1: '${series.title} ID: ${series.id}'),
              ETextH6(textH6: series.description),
              Container(
                  margin: const EdgeInsets.only(top: 16),
                  child: const ETextH2(textH2: 'Classificação')),
              ETextH6(textH6: series.moreInformation!),
            ],
          ),
        ));
  }
}
