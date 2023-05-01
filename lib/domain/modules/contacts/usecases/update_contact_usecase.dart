import 'package:contacts_app/domain/modules/contacts/entities/index/index.dart';

import '../repository/contacts_repository.dart';

class UpdateContactUsecase {
  final ContactsRepository repository;

  UpdateContactUsecase({required this.repository});

  void call(UpdateContactParams params) {
    repository.updateContact(params.contact);
  }
}

class UpdateContactParams {
  final ContactEntity contact;

  UpdateContactParams({required this.contact});
}
