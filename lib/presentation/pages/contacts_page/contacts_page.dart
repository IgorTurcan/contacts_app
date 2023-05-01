import 'package:contacts_app/domain/modules/contacts/entities/index/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../blocs/contacts_bloc/contacts_bloc.dart';
import '../contact_details_page/contact_details_page.dart';
import '../../cubits/contact_details_cubit.dart';

class ContactsPage extends StatelessWidget {
  const ContactsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Contacts page')),
      body: BlocBuilder<ContactsBloc, List<ContactEntity>>(
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
                  padding: const EdgeInsets.all(30),
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
