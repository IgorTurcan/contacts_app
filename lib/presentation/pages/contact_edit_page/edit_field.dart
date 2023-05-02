import 'package:flutter/material.dart';

class EditField extends StatelessWidget {
  final String label;
  final TextEditingController controller;

  const EditField({required this.label, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: TextField(
        decoration: InputDecoration(
          border: UnderlineInputBorder(),
          labelText: label,
        ),
        controller: controller,
      ),
    );
  }
}
