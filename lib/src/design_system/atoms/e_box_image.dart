import 'package:flutter/material.dart';

class EBoxImage extends StatelessWidget {
  const EBoxImage({Key? key, required this.pathToImage}) : super(key: key);
  final String pathToImage;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(pathToImage, height: 180, fit: BoxFit.fill),
      ],
    );
  }
}
