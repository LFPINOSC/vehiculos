import 'package:flutter/material.dart';
typedef Validator = String? Function(String? value);
class TextField extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final String? hint;
  final TextInputType keyboardType;
  final bool obscureText;
  final Validator? validator;
  final int? maxLength;
  final int? minLength;
  const TextField({
    super.key,
    required this.controller,
    required this.label,
    this.hint,
    
    required this.keyboardType,
    required this.obscureText,
    this.validator,
    this.maxLength,
    this.minLength
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      obscureText: obscureText,
      maxLength: maxLength,
      maxLines: minLength,
      validator: validator,
      decoration: InputDecoration(
        labelText: label,
        hintText: hint,
        border: const OutlineInputBorder(),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black)
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8)

      ),
    );
  }
}