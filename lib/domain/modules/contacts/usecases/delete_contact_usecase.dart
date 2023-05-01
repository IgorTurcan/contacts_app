import 'package:dartz/dartz.dart';

import '../../../core/failure.dart';
import '../entities/index/index.dart';
import '../repository/contacts_repository.dart';

class DeleteContactUsecase {
  final ContactsRepository repository;

  DeleteContactUsecase({required this.repository});

  Either<Failure, void> call(DeleteContactParams params) {
    return repository.deleteContact(params.contact);
  }
}

class DeleteContactParams {
  final ContactEntity contact;

  DeleteContactParams({required this.contact});
}
