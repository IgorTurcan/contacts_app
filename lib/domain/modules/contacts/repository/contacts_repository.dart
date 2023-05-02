import 'package:contacts_app/domain/core/failure.dart';
import 'package:contacts_app/domain/modules/contacts/entities/index/index.dart';
import 'package:dartz/dartz.dart';

abstract class ContactsRepository {
  Future<Either<Failure, List<ContactEntity>>> getContactsFromJSON();

  Either<Failure, List<ContactEntity>> getAllContacts();

  Either<Failure, void> updateContact(ContactEntity contact);

  Either<Failure, void> addNewContact({
    required String phoneNumber,
    required String firstName,
    String? lastName,
    required List<AddressEntity> addresses,
  });

  Either<Failure, void> addContacts(List<ContactEntity> contacts);

  Either<Failure, void> deleteContact(ContactEntity contact);
}
