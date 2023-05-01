import 'package:contacts_app/domain/modules/contacts/entities/index/index.dart';
import 'package:contacts_app/presentation/core/app_routes.dart';
import 'package:contacts_app/presentation/core/app_texts.dart';
import 'package:contacts_app/presentation/cubits/contact_details_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'contact_field.dart';

typedef OnDone = void Function(
  BuildContext context, {
  required int? contactID,
  required String phoneNumber,
  required String firstName,
  required String? lastName,
  required String? streetAddress1,
  required String? streetAddress2,
  required String? city,
  required String? state,
  required String? zipCode,
});

class ContactDetailsPage extends StatelessWidget {
  final String title;
  final OnDone onDone;

  const ContactDetailsPage({required this.title, required this.onDone});

  @override
  Widget build(BuildContext context) {
    var contact = BlocProvider.of<ContactDetailsCubit>(context).state;

    final TextEditingController phoneNumberController = TextEditingController(text: contact?.phoneNumber);
    final TextEditingController firstNameController = TextEditingController(text: contact?.firstName);
    final TextEditingController lastNameController = TextEditingController(text: contact?.lastName);
    final TextEditingController streetAddress1Controller = TextEditingController(text: contact?.streetAddress1);
    final TextEditingController streetAddress2Controller = TextEditingController(text: contact?.streetAddress2);
    final TextEditingController cityController = TextEditingController(text: contact?.city);
    final TextEditingController stateController = TextEditingController(text: contact?.state);
    final TextEditingController zipCodeController = TextEditingController(text: contact?.zipCode);

    return WillPopScope(
      onWillPop: () async {
        context.go(AppRoutes.contacts.path);
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
            onTap: () => context.go(AppRoutes.contacts.path),
            child: Icon(Icons.arrow_back_sharp),
          ),
          title: Text(title),
        ),
        body: BlocBuilder<ContactDetailsCubit, ContactEntity?>(
          builder: (_, contact) {
            return ListView(
              children: [
                ContactField(controller: firstNameController, hintText: AppTexts.firstName),
                ContactField(controller: lastNameController, hintText: AppTexts.lastName),
                ContactField(controller: phoneNumberController, hintText: AppTexts.phoneNumber),
                ContactField(controller: streetAddress1Controller, hintText: AppTexts.streetAddress1),
                ContactField(controller: streetAddress2Controller, hintText: AppTexts.streetAddress2),
                ContactField(controller: cityController, hintText: AppTexts.city),
                ContactField(controller: stateController, hintText: AppTexts.state),
                ContactField(controller: zipCodeController, hintText: AppTexts.zipCode)
              ],
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            onDone(
              context,
              contactID: contact?.contactID,
              phoneNumber: phoneNumberController.text,
              firstName: firstNameController.text,
              lastName: lastNameController.text,
              streetAddress1: streetAddress1Controller.text,
              streetAddress2: streetAddress2Controller.text,
              city: cityController.text,
              state: stateController.text,
              zipCode: zipCodeController.text,
            );
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(AppTexts.done),
              ),
            );
            context.go(AppRoutes.contacts.path);
          },
          child: const Icon(Icons.check),
        ),
      ),
    );
  }
}
