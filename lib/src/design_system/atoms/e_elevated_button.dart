import 'package:flutter/material.dart';
import 'package:navigation/src/design_system/atoms/e_text_h6.dart';

class EElevatedButton extends StatelessWidget {
  const EElevatedButton(
      {Key? key,
      required this.onPressed,
      required this.color,
      required this.text})
      : super(key: key);

  final VoidCallback onPressed;
  final Color color;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          primary: color,
          minimumSize: const Size.fromHeight(55),
        ),
        child: ETextH6(fontWeight: FontWeight.normal, textH6: text));
  }
}
