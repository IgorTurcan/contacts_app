import 'package:contacts_app/domain/modules/contacts/entities/index/index.dart';

abstract class ContactsRepository {
  Future<List<ContactEntity>> getContactsFromJSON();

  List<ContactEntity> getAllContacts();

  void updateContact(ContactEntity contact);

  void addNewContact({
    required String firstName,
    String? lastName,
    String? streetAddress1,
    String? streetAddress2,
    String? city,
    String? state,
    String? zipCode,
  });

  void addContacts(List<ContactEntity> contacts);

  void deleteContact(ContactEntity contact);
}
