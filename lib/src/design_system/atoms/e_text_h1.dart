import 'package:flutter/material.dart';

class ETextH1 extends StatelessWidget {
  const ETextH1({Key? key, required this.textH1, this.color}) : super(key: key);
  final String textH1;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      textH1,
      textAlign: TextAlign.center,
      style: TextStyle(fontWeight: FontWeight.w700, fontSize: 64, color: color),
    );
  }
}
