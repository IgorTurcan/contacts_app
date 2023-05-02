import 'package:contacts_app/presentation/core/app_colors.dart';
import 'package:contacts_app/presentation/core/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../blocs/contacts_bloc/contacts_state.dart';
import '../../core/app_texts.dart';
import '../../blocs/contacts_bloc/contacts_bloc.dart';
import '../../cubits/contact_details_cubit.dart';
import 'contact.dart';

class ContactsPage extends StatelessWidget {
  const ContactsPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppTexts.contacts),
        leading: Container(),
        backgroundColor: AppColors.green,
      ),
      body: Container(
        color: AppColors.lightGrey,
        child: BlocBuilder<ContactsBloc, ContactsState>(
          builder: (_, state) {
            return Stack(
              children: [
                ListView.separated(
                  padding: EdgeInsets.all(20),
                  shrinkWrap: true,
                  itemCount: state.contacts.length,
                  separatorBuilder: (_, __) => SizedBox(height: 20),
                  itemBuilder: (_, index) => Contact(contact: state.contacts[index]),
                ),
                if (state is Loading) ...[
                  Center(
                    child: CircularProgressIndicator(strokeWidth: 5),
                  ),
                ],
              ],
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          BlocProvider.of<ContactDetailsCubit>(context).changeContact(null);
          context.go(AppRoutes.newContact.path);
        },
        child: const Icon(Icons.add),
        backgroundColor: AppColors.green,
      ),
    );
  }
}
