import 'package:contacts_app/presentation/pages/contact_edit_page/edit_field.dart';
import 'package:flutter/material.dart';

import '../../core/app_colors.dart';
import '../../core/app_texts.dart';
import 'view_models/address_controller.dart';

class AddressEditField extends StatelessWidget {
  final AddressController addressController;

  const AddressEditField({required this.addressController});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: 10),
        Container(height: 1, color: AppColors.grey),
        SizedBox(height: 10),
        EditField(controller: addressController.streetAddress1Controller, label: AppTexts.streetAddress1),
        EditField(controller: addressController.streetAddress2Controller, label: AppTexts.streetAddress2),
        EditField(controller: addressController.cityController, label: AppTexts.city),
        EditField(controller: addressController.stateController, label: AppTexts.state),
        EditField(controller: addressController.zipCodeController, label: AppTexts.zipCode),
        SizedBox(height: 10),
      ],
    );
  }
}
