import 'package:flutter/material.dart';

class ETextH4 extends StatelessWidget {
  const ETextH4({Key? key, required this.textH4}) : super(key: key);
  final String textH4;

  @override
  Widget build(BuildContext context) {
    return Text(
      textH4,
      textAlign: TextAlign.center,
      style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 32),
    );
  }
}
