class AppRoutes {
  static const AppRoute contacts = AppRoute('contacts', '/');
  static const AppRoute contactDetails = AppRoute('contact_details', '/details');
  static const AppRoute newContact = AppRoute('new_contact', '/new');
}

class AppRoute {
  final String name;
  final String path;

  const AppRoute(this.name, this.path);
}
