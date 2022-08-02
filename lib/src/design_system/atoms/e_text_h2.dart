import 'package:flutter/material.dart';

class ETextH2 extends StatelessWidget {
  const ETextH2({Key? key, required this.textH2}) : super(key: key);
  final String textH2;

  @override
  Widget build(BuildContext context) {
    return Text(
      textH2,
      style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 48),
    );
  }
}
