import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../di/injection_container.dart';
import 'base/app_router.dart';
import 'blocs/contacts_bloc/contacts_bloc.dart';
import 'cubits/contact_details_cubit.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await InjectionContainer().init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => ContactsBloc()),
        BlocProvider(create: (_) => ContactDetailsCubit()),
      ],
      child: MaterialApp.router(
        title: 'Contacts App',
        routerConfig: AppRouter.router,
      ),
    );
  }
}
