import 'package:contacts_app/domain/modules/contacts/repository/contacts_repository.dart';

class InitializeContactsUsecase {
  final ContactsRepository repository;

  InitializeContactsUsecase({required this.repository});

  Future<void> call() async {
    var contacts = await repository.getContactsFromJSON();
    repository.addContacts(contacts);
  }
}
