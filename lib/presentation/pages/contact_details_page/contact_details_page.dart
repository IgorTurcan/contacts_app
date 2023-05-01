import 'package:contacts_app/presentation/cubits/contact_details_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/modules/contacts/models/models/index/index.dart';


class ContactDetailsPage extends StatelessWidget {
  const ContactDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Contact details')),
      body: BlocBuilder<ContactDetailsCubit, Contact?>(
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
