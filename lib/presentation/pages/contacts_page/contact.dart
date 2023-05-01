import 'package:contacts_app/presentation/base/app_colors.dart';
import 'package:flutter/material.dart';

import '../../base/app_assets.dart';

class Contact extends StatelessWidget {
  final String firstName;
  final String? lastName;

  const Contact({required this.firstName, required this.lastName});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          AppAssets.avatar,
          SizedBox(width: 20),
          Text(firstName),
          SizedBox(width: 20),
          Text(lastName ?? '-'),
        ],
      ),
    );
  }
}
