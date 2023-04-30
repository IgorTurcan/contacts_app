import 'package:flutter/material.dart';

import 'data_sources/json_loader.dart';
import 'pages/contacts_page/contacts_page.dart';

void main() {

  WidgetsFlutterBinding.ensureInitialized();

  JSONLoader.instance.getInitialContacts().then((res) {
    print(res);
  });
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contacts App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ContactsPage(),
    );
  }
}
