import '../entities/index/index.dart';
import '../repository/contacts_repository.dart';

class GetAllContactsUsecase {
  final ContactsRepository repository;

  GetAllContactsUsecase({required this.repository});

  List<ContactEntity> call() {
    return repository.getAllContacts();
  }
}
