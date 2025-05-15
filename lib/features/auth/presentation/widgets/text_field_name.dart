import 'package:flutter/material.dart';

class TextFieldName extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final TextInputType keyboardType;

  const TextFieldName({
    Key? key,

    required this.hintText,
    this.obscureText = false,
    this.controller,
    this.validator,
    this.keyboardType = TextInputType.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: TextFormField(
        controller: controller,
        obscureText: obscureText,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          hintText: hintText,

          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(
              width: 1.5,
              color: Color.fromRGBO(1, 165, 96, 1),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(
              width: 1.5,
              color: Color.fromRGBO(1, 165, 96, 1),
            ),
          ),
          contentPadding: const EdgeInsets.symmetric(
            vertical: 12.0,
            horizontal: 16.0,
          ),
        ),
        validator: validator,
      ),
    );
  }
}
