import 'dart:convert';

import 'package:contacts_app/data/modules/contacts/models/mappers/contact_mapper.dart';
import 'package:contacts_app/data/modules/contacts/sources/local/contacts_object_box_data_source.dart';
import 'package:contacts_app/domain/core/failure.dart';
import 'package:contacts_app/domain/modules/contacts/entities/index/index.dart';
import 'package:dartz/dartz.dart';

import '../../../../domain/modules/contacts/repository/contacts_repository.dart';
import '../models/mappers/address_mapper.dart';
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
    required List<AddressEntity> addresses,
  }) {
    try {
      var addressesLocalDTOs = addresses.map(AddressMapper.mapEntityToLocalDTO).toList();
      var addressesSerialized = jsonEncode(addressesLocalDTOs.map((el) => el.toJson()).toList());

      objectBoxDataSource.addNewContact(
        phoneNumber: phoneNumber,
        firstName: firstName,
        lastName: lastName,
        addresses: addressesSerialized,
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
