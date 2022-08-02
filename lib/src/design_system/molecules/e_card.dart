import 'package:flutter/material.dart';
import 'package:navigation/src/design_system/atoms/e_box_image.dart';
import 'package:navigation/src/design_system/atoms/e_text_h6.dart';
import 'package:navigation/src/design_system/atoms/e_text_h5.dart';

class ECard extends StatelessWidget {
  const ECard(
      {Key? key,
      required this.title,
      required this.description,
      required this.pathToImage,
      required this.onTap})
      : super(key: key);
  final String pathToImage;
  final String title;
  final String description;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16),
      child: InkWell(
        splashColor: Colors.blue.withAlpha(30),
        onTap: onTap,
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
                  children: [
                    ETextH5(textH5: title),
                    ETextH6(textH6: description)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
