import 'package:contacts_app/pages/contact_details_page/cubit/contact_details_cubit.dart';
import 'package:contacts_app/pages/contacts_page/bloc/contacts_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'pages/contacts_page/contacts_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => ContactsBloc(),
        ),
        BlocProvider(
          create: (_) => ContactDetailsCubit()
        ),
      ],
      child: MaterialApp(
        title: 'Contacts App',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: const ContactsPage(),
      ),
    );
  }
}
