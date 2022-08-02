import 'package:flutter/material.dart';

class ETextH3 extends StatelessWidget {
  const ETextH3({Key? key, required this.textH3}) : super(key: key);
  final String textH3;

  @override
  Widget build(BuildContext context) {
    return Text(
      textH3,
      style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 36),
    );
  }
}
