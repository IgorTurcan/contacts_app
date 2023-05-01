import '../entities/index/index.dart';
import '../repository/contacts_repository.dart';

class DeleteContactUsecase {
  final ContactsRepository repository;

  DeleteContactUsecase({required this.repository});

  void call(DeleteContactParams params) {
    repository.deleteContact(params.contact);
  }
}

class DeleteContactParams {
  final ContactEntity contact;

  DeleteContactParams({required this.contact});
}
