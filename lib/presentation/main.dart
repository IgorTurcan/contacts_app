import 'package:contacts_app/presentation/blocs/contacts_bloc/contacts_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:is_first_run/is_first_run.dart';

import '../di/injection_container.dart';
import 'core/app_router.dart';
import 'blocs/contacts_bloc/contacts_bloc.dart';
import 'blocs/contacts_bloc/contacts_events.dart';
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
        BlocProvider(create: (_) {
          var bloc = ContactsBloc();
          IsFirstRun.isFirstRun().then((isFirst) {
            if (isFirst) {
              bloc.add(PopulateContacts());
            }
            BlocListener<ContactsBloc, ContactsState>(
              listener: (_, state) {
                if (state is Error) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('${state.failure}'),
                    ),
                  );
                }
              },
            );
          });
          return bloc;
        }),
        BlocProvider(create: (_) => ContactDetailsCubit()),
      ],
      child: MaterialApp.router(
        title: 'Contacts App',
        routerConfig: AppRouter.router,
      ),
    );
  }
}
