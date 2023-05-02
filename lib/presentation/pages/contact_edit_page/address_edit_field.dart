import 'package:contacts_app/presentation/pages/contact_edit_page/edit_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/app_colors.dart';
import '../../core/app_texts.dart';
import '../../cubits/contact_details_cubit.dart';

class AddressEditField extends StatelessWidget {
  const AddressEditField();

  @override
  Widget build(BuildContext context) {
    final TextEditingController streetAddress1Controller = TextEditingController(text: 'contact?.streetAddress1');
    final TextEditingController streetAddress2Controller = TextEditingController(text: 'contact?.streetAddress2');
    final TextEditingController cityController = TextEditingController(text: 'contact?.city');
    final TextEditingController stateController = TextEditingController(text: 'contact?.state');
    final TextEditingController zipCodeController = TextEditingController(text: 'contact?.zipCode');

    return Material(
      color: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(height: 1, color: AppColors.grey),
            SizedBox(height: 30),
            // SizedBox(
            //   height: 50,
            //   width: 0.8 * MediaQuery.of(context).size.width,
            //   child: Row(
            //     children: [
            //       SizedBox(
            //         height: 50,
            //         width: 0.8 * MediaQuery.of(context).size.width,
            //         child: EditField(controller: streetAddress1Controller, label: AppTexts.streetAddress1),
            //       ),
            //       // Spacer(),
            //       EditField(controller: streetAddress2Controller, label: AppTexts.streetAddress2),
            //     ],
            //   ),
            // ),
            Row(
              children: [
                EditField(controller: streetAddress2Controller, label: AppTexts.streetAddress2),
              ],
            ),

            // Expanded(
            //   child: SizedBox(
            //     height: 50,
            //     child: Row(
            //       children: [
            //         EditField(controller: cityController, label: AppTexts.city),
            //         Spacer(),
            //         EditField(controller: stateController, label: AppTexts.state),
            //         Spacer(),
            //         EditField(controller: zipCodeController, label: AppTexts.zipCode),
            //       ],
            //     ),
            //   ),
            // ),
            GestureDetector(
              onTap: () {
                var contactDetailsCubit = BlocProvider.of<ContactDetailsCubit>(context);
                // contactDetailsCubit.addAddress(address);
              },
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 20),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: AppColors.green,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Text(
                  AppTexts.done,
                  style: TextStyle(color: AppColors.white, fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
