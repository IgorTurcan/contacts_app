import 'package:contacts_app/domain/modules/contacts/entities/index/index.dart';
import 'package:contacts_app/presentation/base/app_routes.dart';
import 'package:contacts_app/presentation/cubits/contact_details_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class ContactDetailsPage extends StatelessWidget {
  final String title;

  const ContactDetailsPage({required this.title});

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
          title: Text(title),
        ),
        body: BlocBuilder<ContactDetailsCubit, ContactEntity?>(
          builder: (_, contact) {
            return ListView(
              children: [
                ContactField(text: contact?.firstName),
                ContactField(text: contact?.lastName),
                ContactField(text: contact?.streetAddress1),
                ContactField(text: contact?.streetAddress2),
                ContactField(text: contact?.city),
                ContactField(text: contact?.state),
                ContactField(text: contact?.zipCode)
              ],
            );
          },
        ),
      ),
    );
  }
}

class ContactField extends StatelessWidget {
  final String? text;

  const ContactField({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30),
      child: Text(text ?? '-'),
    );
  }
}
