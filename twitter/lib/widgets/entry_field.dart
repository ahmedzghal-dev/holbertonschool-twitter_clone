import 'package:flutter/material.dart';

class CustomEntryField extends StatelessWidget {
  final TextEditingController controller;
  final bool isPassword;
  final String hint;

  const CustomEntryField({
    super.key,
    required this.controller,
    this.isPassword = false,
    this.hint = "",
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15),
      child: TextField(
        controller: controller,
        obscureText: isPassword,
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(color: Colors.grey[200]!),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(color: Colors.blue),
            ),
            hintText: hint,
            contentPadding: EdgeInsets.all(20.0)),
      ),
    );
  }
}
