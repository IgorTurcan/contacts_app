import 'package:contacts_app/data/modules/contacts/models/mappers/contact_mapper.dart';
import 'package:contacts_app/data/modules/contacts/sources/local/contacts_object_box_data_source.dart';
import 'package:contacts_app/domain/modules/contacts/entities/index/index.dart';

import '../../../../domain/modules/contacts/repository/contacts_repository.dart';
import '../sources/local/conatcts_json_data_source.dart';

class ContactsRepositoryImpl implements ContactsRepository {
  final ContactsJSONDataSource jsonDataSource;
  final ContactsObjectBoxDataSource objectBoxDataSource;

  ContactsRepositoryImpl({required this.jsonDataSource, required this.objectBoxDataSource});

  @override
  Future<List<ContactEntity>> getContactsFromJSON() async {
    var contactLocalDTOs = await jsonDataSource.getContacts();
    return contactLocalDTOs.map((el) => ContactMapper.mapLocalDTOToEntity(el)).toList();
  }

  @override
  List<ContactEntity> getAllContacts() {
    var contactLocalDTOs = objectBoxDataSource.getAllContacts();
    return contactLocalDTOs.map((el) => ContactMapper.mapLocalDTOToEntity(el)).toList();
  }

  @override
  void updateContact(ContactEntity contact) {
    var contactLocalDTO = ContactMapper.mapEntityToLocalDTO(contact);
    objectBoxDataSource.updateContact(contactLocalDTO);
  }

  @override
  void addNewContact({
    required String firstName,
    String? lastName,
    String? streetAddress1,
    String? streetAddress2,
    String? city,
    String? state,
    String? zipCode,
  }) {
    objectBoxDataSource.addNewContact(
      firstName: firstName,
      lastName: lastName,
      streetAddress1: streetAddress1,
      streetAddress2: streetAddress2,
      city: city,
      state: state,
      zipCode: zipCode,
    );
  }

  @override
  void addContacts(List<ContactEntity> contacts) {
    var contactLocalDTOs = contacts.map((el) => ContactMapper.mapEntityToLocalDTO(el)).toList();
    objectBoxDataSource.addContacts(contactLocalDTOs);
  }

  @override
  void deleteContact(ContactEntity contact) {
    var contactLocalDTO = ContactMapper.mapEntityToLocalDTO(contact);
    objectBoxDataSource.deleteContact(contactLocalDTO);
  }
}
