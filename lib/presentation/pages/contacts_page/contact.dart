import 'package:contacts_app/domain/modules/contacts/entities/index/index.dart';
import 'package:contacts_app/presentation/base/app_colors.dart';
import 'package:contacts_app/presentation/blocs/contacts_bloc/contacts_bloc.dart';
import 'package:contacts_app/presentation/blocs/contacts_bloc/contacts_events.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../base/app_routes.dart';
import '../../base/app_texts.dart';
import '../../cubits/contact_details_cubit.dart';

class Contact extends StatelessWidget {
  final ContactEntity contact;

  const Contact({required this.contact});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Text(contact.firstName),
          SizedBox(width: 20),
          Text(contact.lastName ?? '-'),
          Spacer(),
          Spacer(),
          GestureDetector(
            onTap: () {
              BlocProvider.of<ContactDetailsCubit>(context).changeContact(contact);
              context.go(AppRoutes.contactDetails.path);
            },
            child: Icon(Icons.edit),
          ),
          Spacer(),
          GestureDetector(
            onTap: () {
              BlocProvider.of<ContactsBloc>(context).add(DeleteContact(contact));
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(AppTexts.done),
                ),
              );
            },
            child: Icon(Icons.delete),
          ),
        ],
      ),
    );
  }
}
