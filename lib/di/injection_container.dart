import 'package:contacts_app/data/core/object_box.dart';
import 'package:contacts_app/data/modules/contacts/repository/contacts_repository_impl.dart';
import 'package:contacts_app/data/modules/contacts/sources/local/conatcts_json_data_source.dart';
import 'package:contacts_app/data/modules/contacts/sources/local/contacts_object_box_data_source.dart';
import 'package:contacts_app/domain/modules/contacts/repository/contacts_repository.dart';
import 'package:get_it/get_it.dart';
import '../domain/modules/contacts/usecases/add_new_contact_usecase.dart';
import '../domain/modules/contacts/usecases/delete_contact_usecase.dart';
import '../domain/modules/contacts/usecases/get_all_contacts_usecase.dart';
import '../domain/modules/contacts/usecases/initialize_contacts_usecase.dart';
import '../domain/modules/contacts/usecases/update_contact_usecase.dart';

class InjectionContainer {
  Future<void> init() async {
    var di = GetIt.instance;
    await _initData(di);
    await _initDomain(di);
  }

  Future<void> _initData(GetIt di) async {
    var objectBox = await ObjectBox.create();
    di.registerLazySingleton<ObjectBox>(() => objectBox);
    di.registerLazySingleton<ContactsObjectBoxDataSource>(
      () => ContactsObjectBoxDataSourceImpl(objectBox: di<ObjectBox>()),
    );
    di.registerLazySingleton<ContactsJSONDataSource>(() => ContactsJSONDataSourceImpl());
    di.registerLazySingleton<ContactsRepository>(
      () => ContactsRepositoryImpl(
        jsonDataSource: di<ContactsJSONDataSource>(),
        objectBoxDataSource: di<ContactsObjectBoxDataSource>(),
      ),
    );
  }

  Future<void> _initDomain(GetIt di) async {
    di.registerLazySingleton<InitializeContactsUsecase>(
      () => InitializeContactsUsecase(repository: di<ContactsRepository>()),
    );
    di.registerLazySingleton<AddNewContactUsecase>(() => AddNewContactUsecase(repository: di<ContactsRepository>()));
    di.registerLazySingleton<DeleteContactUsecase>(() => DeleteContactUsecase(repository: di<ContactsRepository>()));
    di.registerLazySingleton<GetAllContactsUsecase>(() => GetAllContactsUsecase(repository: di<ContactsRepository>()));
    di.registerLazySingleton<UpdateContactUsecase>(() => UpdateContactUsecase(repository: di<ContactsRepository>()));
  }
}
