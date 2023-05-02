import 'package:contacts_app/data/core/object_box.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../data/modules/contacts/repository/contacts_repository_impl.dart';
import '../data/modules/contacts/sources/local/conatcts_json_data_source.dart';
import '../data/modules/contacts/sources/local/contacts_object_box_data_source.dart';
import '../domain/modules/contacts/repository/contacts_repository.dart';
import '../domain/modules/contacts/usecases/add_new_contact_usecase.dart';
import '../domain/modules/contacts/usecases/delete_contact_usecase.dart';
import '../domain/modules/contacts/usecases/get_all_contacts_usecase.dart';
import '../domain/modules/contacts/usecases/initialize_contacts_usecase.dart';
import '../domain/modules/contacts/usecases/update_contact_usecase.dart';

class DependencyInjectionContainer extends StatelessWidget {
  final ObjectBox objectBox;
  final Widget child;

  const DependencyInjectionContainer({required this.child, required this.objectBox});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<ContactsObjectBoxDataSource>(
          create: (_) => ContactsObjectBoxDataSourceImpl(objectBox: objectBox),
        ),
        RepositoryProvider<ContactsJSONDataSource>(create: (_) => ContactsJSONDataSourceImpl()),
        RepositoryProvider<ContactsRepository>(
          create: (context) => ContactsRepositoryImpl(
            jsonDataSource: context.read<ContactsJSONDataSource>(),
            objectBoxDataSource: context.read<ContactsObjectBoxDataSource>(),
          ),
        ),
        RepositoryProvider<InitializeContactsUsecase>(
          create: (context) => InitializeContactsUsecase(repository: context.read<ContactsRepository>()),
        ),
        RepositoryProvider<AddNewContactUsecase>(
          create: (context) => AddNewContactUsecase(repository: context.read<ContactsRepository>()),
        ),
        RepositoryProvider<DeleteContactUsecase>(
          create: (context) => DeleteContactUsecase(repository: context.read<ContactsRepository>()),
        ),
        RepositoryProvider<GetAllContactsUsecase>(
          create: (context) => GetAllContactsUsecase(repository: context.read<ContactsRepository>()),
        ),
        RepositoryProvider<UpdateContactUsecase>(
          create: (context) => UpdateContactUsecase(repository: context.read<ContactsRepository>()),
        ),
      ],
      child: child,
    );
  }
}
