import 'package:flutter/material.dart';

class ETextH5 extends StatelessWidget {
  const ETextH5({Key? key, required this.textH5}) : super(key: key);
  final String textH5;

  @override
  Widget build(BuildContext context) {
    return Text(
      textH5,
      style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 26),
    );
  }
}
