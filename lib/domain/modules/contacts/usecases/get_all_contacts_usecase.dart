import 'package:contacts_app/domain/core/failure.dart';
import 'package:dartz/dartz.dart';

import '../entities/index/index.dart';
import '../repository/contacts_repository.dart';

class GetAllContactsUsecase {
  final ContactsRepository repository;

  GetAllContactsUsecase({required this.repository});

  Either<Failure, List<ContactEntity>> call() {
    return repository.getAllContacts();
  }
}
