import 'package:contacts_app/pages/contact_details_page/contact_details_page.dart';
import 'package:contacts_app/pages/contact_details_page/cubit/contact_details_cubit.dart';
import 'package:contacts_app/pages/contacts_page/bloc/contacts_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../models/generated/index.dart';

class ContactsPage extends StatelessWidget {
  const ContactsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contacts page'),
      ),
      body: BlocBuilder<ContactsBloc, List<Contact>>(
        builder: (_, contacts) {
          return ListView.builder(
            itemCount: contacts.length,
            itemBuilder: (_, index) {
              var contact = contacts[index];
              return InkWell(
                onTap: () {
                  BlocProvider.of<ContactDetailsCubit>(context).changeContact(contact);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const ContactDetailsPage()),
                  );
                },
                child: Container(
                  padding: EdgeInsets.all(30),
                  child: Text('${contact.firstName}-${contact.lastName}'),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
