import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.label,
    required this.controller,
  });

  final String label;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Flexible(
        child: TextField(
            controller: controller,
            decoration: InputDecoration(
              label: Text(
                label,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              border: InputBorder.none,
            )));
  }
}
