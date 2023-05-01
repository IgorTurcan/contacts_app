import 'package:contacts_app/data/modules/contacts/sources/local/contacts_object_box_data_source.dart';

import '../models/models/index/index.dart';
import '../sources/local/conatcts_json_data_source.dart';

class ContactsRepositoryImpl {
  final ContactsJSONDataSource jsonDataSource;
  final ContactsObjectBoxDataSource objectBoxDataSource;

  ContactsRepositoryImpl({required this.jsonDataSource, required this.objectBoxDataSource});

  Future<List<Contact>> getContactsFromJSON() {
    return jsonDataSource.getContacts();
  }

  List<Contact> getAllContacts() {
    return objectBoxDataSource.getAllContacts();
  }

  void updateContact(Contact contact) {
    objectBoxDataSource.updateContact(contact);
  }

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

  void addContacts(List<Contact> contacts) {
    objectBoxDataSource.addContacts(contacts);
  }

  void deleteContact(Contact contact) {
    objectBoxDataSource.deleteContact(contact);
  }
}
