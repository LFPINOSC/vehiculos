import 'package:flutter/material.dart';

class ButtonAdd extends StatelessWidget {
  final String label;
  final IconData icon;
  final VoidCallback onPressed;

  const ButtonAdd({
    super.key,
    required this.label,
    required this.icon,
    required this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      icon: Icon(icon),
      label: Text(label),
      style: ElevatedButton.styleFrom(
        minimumSize:  const Size(double.infinity,50),
        shape:  RoundedRectangleBorder(borderRadius: BorderRadius.zero)
      ),
      onPressed: onPressed,
    );
  }
}