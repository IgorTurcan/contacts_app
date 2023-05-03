import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

class EditField extends StatelessWidget {
  final String label;
  final TextEditingController controller;

  const EditField({required this.label, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 40),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: label,
        ),
        controller: controller,
        onChanged: (_) {
          Logger().i('Edited $label');
        },
      ),
    );
  }
}
