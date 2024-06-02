import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField(
      {required this.inputType,
      required this.fieldName,
      required this.hintText,
      required this.controller,
      required this.obscureText,
      required this.onChanged});

  final TextInputType inputType;
  Function(String)? onChanged;
  final String hintText;
  final String fieldName;
  final controller;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10, left: 20),
      child: TextField(
        onChanged: onChanged,
        obscureText: obscureText,
        keyboardType: inputType,
        decoration: InputDecoration(
          hintStyle: TextStyle(color: Colors.grey.shade400),
          hintText: '$hintText',
          label: Text('$fieldName'),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(), borderRadius: BorderRadius.circular(8)),
          border: OutlineInputBorder(
            borderSide: BorderSide(),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    );
  }
}
