import 'package:contacts_app/presentation/blocs/contacts_bloc/contacts_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:is_first_run/is_first_run.dart';

import '../data/core/object_box.dart';

import '../domain/modules/contacts/usecases/add_new_contact_usecase.dart';
import '../domain/modules/contacts/usecases/delete_contact_usecase.dart';
import '../domain/modules/contacts/usecases/get_all_contacts_usecase.dart';
import '../domain/modules/contacts/usecases/initialize_contacts_usecase.dart';
import '../domain/modules/contacts/usecases/update_contact_usecase.dart';

import 'core/app_router.dart';
import 'blocs/contacts_bloc/contacts_bloc.dart';
import 'blocs/contacts_bloc/contacts_events.dart';
import 'cubits/contact_details_cubit.dart';
import 'dependency_injection_container.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  var objectBox = await ObjectBox.create();

  runApp(
    DependencyInjectionContainer(
      objectBox: objectBox,
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => ContactDetailsCubit()),
        BlocProvider(
          create: (_) {
            var bloc = ContactsBloc(
              initializeContactsUsecase: context.read<InitializeContactsUsecase>(),
              addNewContactUsecase: context.read<AddNewContactUsecase>(),
              deleteContactUsecase: context.read<DeleteContactUsecase>(),
              getAllContactsUsecase: context.read<GetAllContactsUsecase>(),
              updateContactUsecase: context.read<UpdateContactUsecase>(),
            );
            IsFirstRun.isFirstRun().then((isFirst) {
              if (isFirst) {
                bloc.add(PopulateContacts());
              }
              BlocListener<ContactsBloc, ContactsState>(
                listener: (_, state) {
                  if (state is Error) {
                    AppRouter.showSnackbar(context, '${state.failure}');
                  }
                },
              );
            });
            return bloc;
          },
        )
      ],
      child: MaterialApp.router(
        title: 'Contacts App',
        routerConfig: AppRouter.router,
      ),
    );
  }
}
