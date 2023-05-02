import 'package:contacts_app/domain/modules/contacts/entities/index/index.dart';
import 'package:flutter/material.dart';

import '../../core/app_colors.dart';
import '../../core/app_texts.dart';
import 'info_field.dart';

class AddressInfoField extends StatelessWidget {
  final AddressEntity? address;

  const AddressInfoField({this.address});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(height: 1, color: AppColors.grey),
        SizedBox(height: 30),
        Row(
          children: [
            InfoField(text: address?.streetAddress1, title: AppTexts.streetAddress1),
            Spacer(),
            InfoField(text: address?.streetAddress2, title: AppTexts.streetAddress2),
          ],
        ),
        Row(
          children: [
            InfoField(text: address?.city, title: AppTexts.city),
            Spacer(),
            InfoField(text: address?.state, title: AppTexts.state),
            Spacer(),
            InfoField(text: address?.zipCode, title: AppTexts.zipCode),
          ],
        ),
      ],
    );
  }
}
