import 'package:flutter/material.dart';

class ContactField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;

  const ContactField({required this.hintText, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: hintText,
        ),
        controller: controller,
      ),
    );
  }
}
