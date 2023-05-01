import 'package:contacts_app/presentation/pages/contact_details_page/contact_details_page.dart';
import 'package:contacts_app/presentation/pages/contacts_page/contacts_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
          pageBuilder: (_, __) => MaterialPage(child: ContactDetailsPage()),
        ),
        GoRoute(
          name: AppRoutes.newContact.name,
          path: AppRoutes.newContact.path,
          pageBuilder: (_, __) => MaterialPage(child: ContactDetailsPage()),
        ),
      ],
    );
    return router;
  }
}
