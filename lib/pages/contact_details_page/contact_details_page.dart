import 'package:contacts_app/pages/contact_details_page/cubit/contact_details_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../models/generated/index.dart';

class ContactDetailsPage extends StatelessWidget {
  const ContactDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ContactDetailsCubit, Contact?>(builder: (_, contact) {
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
    });
  }
}

class ContactField extends StatelessWidget {
  final String? text;

  const ContactField({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      child: Text(text ?? '-'),
    );
  }
}
