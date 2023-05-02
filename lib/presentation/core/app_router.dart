import 'package:contacts_app/domain/modules/contacts/entities/index/index.dart';
import 'package:contacts_app/presentation/blocs/contacts_bloc/contacts_bloc.dart';
import 'package:contacts_app/presentation/blocs/contacts_bloc/contacts_events.dart';
import 'package:contacts_app/presentation/core/app_texts.dart';
import 'package:contacts_app/presentation/pages/contact_details_page/contact_details_page.dart';
import 'package:contacts_app/presentation/pages/contact_edit_page/contact_edit_page.dart';
import 'package:contacts_app/presentation/pages/contacts_page/contacts_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:logger/logger.dart';

import 'app_routes.dart';

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
            child: ContactDetailsPage(),
          ),
        ),
        GoRoute(
          name: AppRoutes.editContact.name,
          path: AppRoutes.editContact.path,
          pageBuilder: (_, __) => MaterialPage(
            child: ContactEditPage(
              title: AppTexts.editContact,
              onBack: (context) {
                Logger().i('Went back to Contact details page');
                context.go(AppRoutes.contactDetails.path);
              },
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
                Logger().i('Updated a contact');
                AppRouter.showSnackbar(context, AppTexts.done);
                context.go(AppRoutes.contactDetails.path);
              },
            ),
          ),
        ),
        GoRoute(
          name: AppRoutes.newContact.name,
          path: AppRoutes.newContact.path,
          pageBuilder: (_, __) => MaterialPage(
            child: ContactEditPage(
              title: AppTexts.addNewContact,
              onBack: (context) {
                Logger().i('Went back to Contacts page');
                context.go(AppRoutes.contacts.path);
              },
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
                Logger().i('Added a new contact');
                AppRouter.showSnackbar(context, AppTexts.done);
                context.go(AppRoutes.contacts.path);
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
