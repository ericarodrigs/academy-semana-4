import 'package:flutter/material.dart';

class ETextH6 extends StatelessWidget {
  const ETextH6({Key? key, required this.textH6}) : super(key: key);
  final String textH6;

  @override
  Widget build(BuildContext context) {
    return Text(
      textH6,
      overflow: TextOverflow.ellipsis,
      maxLines: 4,
      style: const TextStyle(fontWeight: FontWeight.w300, fontSize: 24),
    );
  }
}