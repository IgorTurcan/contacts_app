import 'package:dartz/dartz.dart';

import '../../../core/failure.dart';
import '../entities/index/index.dart';
import '../repository/contacts_repository.dart';

class AddNewContactUsecase {
  final ContactsRepository repository;

  AddNewContactUsecase({required this.repository});

  Either<Failure, void> call(AddNewContactParams params) {
    return repository.addNewContact(
      phoneNumber: params.phoneNumber,
      firstName: params.firstName,
      lastName: params.lastName,
      addresses: params.addresses,
    );
  }
}

class AddNewContactParams {
  final String phoneNumber;
  final String firstName;
  final String? lastName;
  final List<AddressEntity> addresses;

  AddNewContactParams({
    required this.phoneNumber,
    required this.firstName,
    required this.lastName,
    required this.addresses,
  });
}
