import 'package:flutter/material.dart';

class EElevatedButton extends StatelessWidget {
  const EElevatedButton({Key? key, required this.onPressed, required this.color, required this.text}) : super(key: key);

  final VoidCallback onPressed;
  final Color color;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          primary: color
      ),
      child: Text(text),
    );
  }
}
