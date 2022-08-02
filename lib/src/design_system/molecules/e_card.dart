import 'package:flutter/material.dart';
import 'package:navigation/src/design_system/atoms/e_box_image.dart';
import 'package:navigation/src/design_system/atoms/e_text_h4.dart';
import 'package:navigation/src/design_system/atoms/e_text_h6.dart';

class ECard extends StatelessWidget {
  const ECard(
      {Key? key,
      required this.textH4,
      required this.textH6,
      required this.pathToImage})
      : super(key: key);
  final String pathToImage;
  final String textH4;
  final String textH6;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16),
      child: InkWell(
        splashColor: Colors.blue.withAlpha(30),
        onTap: () {
          debugPrint('Card tapped.');
        },
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                margin: const EdgeInsets.only(top: 5, bottom: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    EBoxImage(pathToImage: pathToImage),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: SizedBox(
                height: 180,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [ETextH4(textH4: textH4), ETextH6(textH6: textH6)],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
