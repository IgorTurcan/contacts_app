import 'package:contacts_app/domain/modules/contacts/entities/index/index.dart';
import 'package:contacts_app/presentation/core/app_texts.dart';
import 'package:contacts_app/presentation/cubits/contact_details_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/app_colors.dart';
import 'edit_field.dart';

typedef OnDone = void Function(
  BuildContext context, {
  required int? id,
  required String phoneNumber,
  required String firstName,
  required String? lastName,
  required String? streetAddress1,
  required String? streetAddress2,
  required String? city,
  required String? state,
  required String? zipCode,
});
typedef OnBack = void Function(BuildContext context);

class ContactEditPage extends StatelessWidget {
  final String title;
  final OnBack onBack;
  final OnDone onDone;

  const ContactEditPage({required this.title, required this.onDone, required this.onBack});

  @override
  Widget build(BuildContext context) {
    var contact = BlocProvider.of<ContactDetailsCubit>(context).state;

    final TextEditingController phoneNumberController = TextEditingController(text: contact?.phoneNumber);
    final TextEditingController firstNameController = TextEditingController(text: contact?.firstName);
    final TextEditingController lastNameController = TextEditingController(text: contact?.lastName);
    final TextEditingController streetAddress1Controller = TextEditingController(text: 'contact?.streetAddress1');
    final TextEditingController streetAddress2Controller = TextEditingController(text: 'contact?.streetAddress2');
    final TextEditingController cityController = TextEditingController(text: 'contact?.city');
    final TextEditingController stateController = TextEditingController(text: 'contact?.state');
    final TextEditingController zipCodeController = TextEditingController(text: 'contact?.zipCode');

    return WillPopScope(
      onWillPop: () async {
        onBack(context);
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
            onTap: () => onBack(context),
            child: Icon(Icons.arrow_back_sharp),
          ),
          title: Text(title),
          backgroundColor: AppColors.green,
        ),
        body: BlocBuilder<ContactDetailsCubit, ContactEntity?>(
          builder: (_, contact) {
            return ListView(
              children: [
                EditField(controller: firstNameController, label: AppTexts.firstName),
                EditField(controller: lastNameController, label: AppTexts.lastName),
                EditField(controller: phoneNumberController, label: AppTexts.phoneNumber),
                EditField(controller: streetAddress1Controller, label: AppTexts.streetAddress1),
                EditField(controller: streetAddress2Controller, label: AppTexts.streetAddress2),
                EditField(controller: cityController, label: AppTexts.city),
                EditField(controller: stateController, label: AppTexts.state),
                EditField(controller: zipCodeController, label: AppTexts.zipCode)
              ],
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            var contactDetailsCubit = BlocProvider.of<ContactDetailsCubit>(context);
            onDone(
              context,
              id: contactDetailsCubit.state?.id,
              firstName: firstNameController.text,
              lastName: lastNameController.text,
              phoneNumber: phoneNumberController.text,
              streetAddress1: streetAddress1Controller.text,
              streetAddress2: streetAddress2Controller.text,
              city: cityController.text,
              state: stateController.text,
              zipCode: zipCodeController.text,
            );

          },
          child: const Icon(Icons.check),
          backgroundColor: AppColors.green,
        ),
      ),
    );
  }
}
