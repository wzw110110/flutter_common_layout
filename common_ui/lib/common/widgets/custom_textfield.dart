import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final bool obscureText;

  const CustomTextField(
      {super.key,
      required this.controller,
      required this.labelText,
      this.obscureText = false});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      style: TextStyle(color: Colors.white, fontSize: 14),
      obscureText: obscureText,
      cursorColor: Colors.white,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: TextStyle(color: Colors.white, fontSize: 14),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white, width: 0.5)),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white, width: 1)),
      ),
    );
  }
}
