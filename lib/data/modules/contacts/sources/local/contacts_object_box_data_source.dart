import 'dart:math';

import 'package:contacts_app/data/core/object_box.dart';

import '../../models/index/index.dart';

abstract class ContactsObjectBoxDataSource {
  List<ContactLocalDTO> getAllContacts();

  void updateContact(ContactLocalDTO contact);

  void addNewContact({
    required String phoneNumber,
    required String firstName,
    String? lastName,
    String? streetAddress1,
    String? streetAddress2,
    String? city,
    String? state,
    String? zipCode,
  });

  void addContacts(List<ContactLocalDTO> contacts);

  void deleteContact(ContactLocalDTO contact);
}

class ContactsObjectBoxDataSourceImpl implements ContactsObjectBoxDataSource {
  final ObjectBox objectBox;

  ContactsObjectBoxDataSourceImpl({required this.objectBox});

  int get _randomID => Random().nextInt(100000) + 1;

  @override
  List<ContactLocalDTO> getAllContacts() {
    return objectBox.contactBox.getAll();
  }

  @override
  void updateContact(ContactLocalDTO contact) {
    bool removed = objectBox.contactBox.remove(contact.contactID);
    if (removed) {
      objectBox.contactBox.put(contact);
    }
  }

  @override
  void addNewContact({
    required String phoneNumber,
    required String firstName,
    String? lastName,
    String? streetAddress1,
    String? streetAddress2,
    String? city,
    String? state,
    String? zipCode,
  }) {
    int newID = _randomID;
    while (objectBox.contactBox.contains(newID)) {
      newID = _randomID;
    }
    ContactLocalDTO newContact = ContactLocalDTO(
      contactID: newID,
      phoneNumber: phoneNumber,
      firstName: firstName,
      lastName: lastName,
      streetAddress1: streetAddress1,
      streetAddress2: streetAddress2,
      city: city,
      state: state,
      zipCode: zipCode,
    );
    objectBox.contactBox.put(newContact);
  }

  @override
  void addContacts(List<ContactLocalDTO> contacts) {
    objectBox.contactBox.putMany(contacts);
  }

  @override
  void deleteContact(ContactLocalDTO contact) {
    objectBox.contactBox.remove(contact.contactID);
  }
}
