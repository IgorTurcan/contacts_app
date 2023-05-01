import 'package:contacts_app/domain/modules/contacts/entities/index/index.dart';
import 'package:dartz/dartz.dart';

import '../../../core/failure.dart';
import '../repository/contacts_repository.dart';

class UpdateContactUsecase {
  final ContactsRepository repository;

  UpdateContactUsecase({required this.repository});

  Either<Failure, void> call(UpdateContactParams params) {
    return repository.updateContact(params.contact);
  }
}

class UpdateContactParams {
  final ContactEntity contact;

  UpdateContactParams({required this.contact});
}
