import 'package:flutter/material.dart';

class ETextH1 extends StatelessWidget {
  const ETextH1({Key? key, required this.textH1}) : super(key: key);
  final String textH1;

  @override
  Widget build(BuildContext context) {
    return Text(
      textH1,
      style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 64),
    );
  }
}
