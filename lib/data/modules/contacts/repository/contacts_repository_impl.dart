import 'package:contacts_app/data/modules/contacts/models/mappers/contact_mapper.dart';
import 'package:contacts_app/data/modules/contacts/sources/local/contacts_object_box_data_source.dart';
import 'package:contacts_app/domain/core/failure.dart';
import 'package:contacts_app/domain/modules/contacts/entities/index/index.dart';
import 'package:dartz/dartz.dart';

import '../../../../domain/modules/contacts/repository/contacts_repository.dart';
import '../sources/local/conatcts_json_data_source.dart';

class ContactsRepositoryImpl implements ContactsRepository {
  final ContactsJSONDataSource jsonDataSource;
  final ContactsObjectBoxDataSource objectBoxDataSource;

  ContactsRepositoryImpl({required this.jsonDataSource, required this.objectBoxDataSource});

  @override
  Future<Either<Failure, List<ContactEntity>>> getContactsFromJSON() async {
    try {
      var contactLocalDTOs = await jsonDataSource.getContacts();
      var contacts = contactLocalDTOs.map((el) => ContactMapper.mapLocalDTOToEntity(el)).toList();
      return Right(contacts);
    } catch (e, s) {
      return Left(JsonParseFailure(e, s));
    }
  }

  @override
  Either<Failure, List<ContactEntity>> getAllContacts() {
    try {
      var contactLocalDTOs = objectBoxDataSource.getAllContacts();
      var contacts = contactLocalDTOs.map((el) => ContactMapper.mapLocalDTOToEntity(el)).toList();
      return Right(contacts);
    } catch (e, s) {
      return Left(ObjectBoxFailure(e, s));
    }
  }

  @override
  Either<Failure, void> updateContact(ContactEntity contact) {
    try {
      var contactLocalDTO = ContactMapper.mapEntityToLocalDTO(contact);
      objectBoxDataSource.updateContact(contactLocalDTO);
      return Right(null);
    } catch (e, s) {
      return Left(ObjectBoxFailure(e, s));
    }
  }

  @override
  Either<Failure, void> addNewContact({
    required String phoneNumber,
    required String firstName,
    String? lastName,
    String? streetAddress1,
    String? streetAddress2,
    String? city,
    String? state,
    String? zipCode,
  }) {
    try {
      objectBoxDataSource.addNewContact(
        phoneNumber: phoneNumber,
        firstName: firstName,
        lastName: lastName,
        streetAddress1: streetAddress1,
        streetAddress2: streetAddress2,
        city: city,
        state: state,
        zipCode: zipCode,
      );
      return Right(null);
    } catch (e, s) {
      return Left(ObjectBoxFailure(e, s));
    }
  }

  @override
  Either<Failure, void> addContacts(List<ContactEntity> contacts) {
    try {
      var contactLocalDTOs = contacts.map((el) => ContactMapper.mapEntityToLocalDTO(el)).toList();
      objectBoxDataSource.addContacts(contactLocalDTOs);
      return Right(null);
    } catch (e, s) {
      return Left(ObjectBoxFailure(e, s));
    }
  }

  @override
  Either<Failure, void> deleteContact(ContactEntity contact) {
    try {
      var contactLocalDTO = ContactMapper.mapEntityToLocalDTO(contact);
      objectBoxDataSource.deleteContact(contactLocalDTO);
      return Right(null);
    } catch (e, s) {
      return Left(ObjectBoxFailure(e, s));
    }
  }
}
