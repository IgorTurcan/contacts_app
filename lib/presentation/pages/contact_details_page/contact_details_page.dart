import 'package:contacts_app/domain/modules/contacts/entities/index/index.dart';
import 'package:contacts_app/presentation/core/app_routes.dart';
import 'package:contacts_app/presentation/core/app_texts.dart';
import 'package:contacts_app/presentation/cubits/contact_details_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../core/app_colors.dart';
import 'info_field.dart';

class ContactDetailsPage extends StatelessWidget {
  const ContactDetailsPage();

  @override
  Widget build(BuildContext context) {
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
          title: Text(AppTexts.contactDetails),
          backgroundColor: AppColors.green,
        ),
        body: BlocBuilder<ContactDetailsCubit, ContactEntity?>(
          builder: (_, contact) {
            return ListView(
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
              children: [
                InfoField(text: contact?.firstName, title: AppTexts.firstName),
                InfoField(text: contact?.lastName, title: AppTexts.lastName),
                InfoField(text: contact?.phoneNumber, title: AppTexts.phoneNumber),
                InfoField(text: contact?.streetAddress1, title: AppTexts.streetAddress1),
                InfoField(text: contact?.streetAddress2, title: AppTexts.streetAddress2),
                InfoField(text: contact?.city, title: AppTexts.city),
                InfoField(text: contact?.state, title: AppTexts.state),
                InfoField(text: contact?.zipCode, title: AppTexts.zipCode),
              ],
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => context.go(AppRoutes.editContact.path),
          child: const Icon(Icons.edit),
          backgroundColor: AppColors.green,
        ),
      ),
    );
  }
}
