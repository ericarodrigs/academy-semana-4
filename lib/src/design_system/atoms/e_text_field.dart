import 'package:flutter/material.dart';

class ETextField extends StatelessWidget {
  const ETextField({
    Key? key,
    required this.labelText,
    required this.textInputAction,
    required this.textValidator,
    this.keyboardType,
    this.obscureText,
  }) : super(key: key);

  final String labelText;
  final TextInputAction? textInputAction;
  final String textValidator;
  final TextInputType? keyboardType;
  final bool? obscureText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12),
      child: TextFormField(
        textInputAction: textInputAction,
        keyboardType: keyboardType,
        validator: (String? value) {
          if (value == null || value.isEmpty) {
            return textValidator;
          }
          return null;
        },
        obscureText: obscureText ?? false,
        cursorColor: Colors.black,
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: const TextStyle(color: Colors.black),
          border: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black, width: 1),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black, width: 1),
          ),
          disabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey, width: 1),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue, width: 2),
          ),
        ),
      ),
    );
  }
}
