import 'package:contacts_app/domain/modules/contacts/entities/index/index.dart';
import 'package:contacts_app/presentation/core/app_colors.dart';
import 'package:contacts_app/presentation/blocs/contacts_bloc/contacts_bloc.dart';
import 'package:contacts_app/presentation/blocs/contacts_bloc/contacts_events.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:logger/logger.dart';

import '../../core/app_router.dart';
import '../../core/app_routes.dart';
import '../../core/app_texts.dart';
import '../../cubits/contact_details_cubit.dart';

class Contact extends StatelessWidget {
  final ContactEntity contact;

  const Contact({required this.contact});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        BlocProvider.of<ContactDetailsCubit>(context).changeContact(contact);
        context.go(AppRoutes.contactDetails.path);
        Logger().i('Pressed edit a contact');
      },
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            Icon(Icons.account_circle_sharp),
            SizedBox(width: 20),
            Text('${contact.firstName} ${contact.lastName}'),
            Spacer(),
            SizedBox(width: 40),
            GestureDetector(
              onTap: () {
                BlocProvider.of<ContactsBloc>(context).add(DeleteContact(contact));
                AppRouter.showSnackbar(context, AppTexts.done);
                Logger().i('Deleted a contact');
              },
              child: Icon(Icons.delete, color: AppColors.darkRed),
            ),
            SizedBox(width: 30),
          ],
        ),
      ),
    );
  }
}
