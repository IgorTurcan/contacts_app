import 'package:contacts_app/domain/modules/contacts/entities/index/index.dart';
import 'package:contacts_app/presentation/blocs/contacts_bloc/contacts_bloc.dart';
import 'package:contacts_app/presentation/blocs/contacts_bloc/contacts_events.dart';
import 'package:contacts_app/presentation/pages/contact_details_page/contact_details_page.dart';
import 'package:contacts_app/presentation/pages/contacts_page/contacts_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'app_routes.dart';
import 'app_texts.dart';

class AppRouter {
  static GoRouter get router {
    GoRouter router = GoRouter(
      routes: [
        GoRoute(
          name: AppRoutes.contacts.name,
          path: AppRoutes.contacts.path,
          pageBuilder: (_, __) => MaterialPage(child: ContactsPage()),
        ),
        GoRoute(
          name: AppRoutes.contactDetails.name,
          path: AppRoutes.contactDetails.path,
          pageBuilder: (_, __) => MaterialPage(
            child: ContactDetailsPage(
              title: AppTexts.contactDetails,
              onDone: (
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
              }) {
                var contactsBloc = BlocProvider.of<ContactsBloc>(context);
                contactsBloc.add(
                  UpdateContact(
                    ContactEntity(
                      contactID: contactID!,
                      phoneNumber: phoneNumber,
                      firstName: firstName,
                      lastName: lastName,
                      streetAddress1: streetAddress1,
                      streetAddress2: streetAddress2,
                      city: city,
                      state: state,
                      zipCode: zipCode,
                    ),
                  ),
                );
              },
            ),
          ),
        ),
        GoRoute(
          name: AppRoutes.newContact.name,
          path: AppRoutes.newContact.path,
          pageBuilder: (_, __) => MaterialPage(
            child: ContactDetailsPage(
              title: AppTexts.addNewContact,
              onDone: (
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
              }) {
                var contactsBloc = BlocProvider.of<ContactsBloc>(context);
                contactsBloc.add(
                  AddNewContact(
                    phoneNumber: phoneNumber,
                    firstName: firstName,
                    lastName: lastName,
                    streetAddress1: streetAddress1,
                    streetAddress2: streetAddress2,
                    city: city,
                    state: state,
                    zipCode: zipCode,
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
    return router;
  }

  static void showSnackbar(BuildContext context, String message) {
    final scaffoldMessenger = ScaffoldMessenger.of(context);
    scaffoldMessenger.clearSnackBars();
    scaffoldMessenger.showSnackBar(
      SnackBar(content: Text(message)),
    );
  }
}
