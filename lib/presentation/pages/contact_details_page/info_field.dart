import 'package:flutter/material.dart';

import '../../core/app_colors.dart';

class InfoField extends StatelessWidget {
  final String title;
  final String? text;

  const InfoField({required this.title, required this.text});

  @override
  Widget build(BuildContext context) {
    String formattedText = text ?? '-';
    if (text?.isEmpty ?? false) {
      formattedText = '-';
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(title, style: TextStyle(fontSize: 15, color: AppColors.grey)),
        SizedBox(height: 5),
        Text(formattedText, style: TextStyle(fontSize: 20)),
        SizedBox(height: 30)
      ],
    );
  }
}
