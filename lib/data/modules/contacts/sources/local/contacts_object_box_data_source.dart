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
    required String addresses,
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
    bool removed = objectBox.contactBox.remove(contact.id);
    if (removed) {
      objectBox.contactBox.put(contact);
    }
  }

  @override
  void addNewContact({
    required String phoneNumber,
    required String firstName,
    String? lastName,
    required String addresses,
  }) {
    int newID = _randomID;
    while (objectBox.contactBox.contains(newID)) {
      newID = _randomID;
    }
    ContactLocalDTO newContact = ContactLocalDTO(
      id: newID,
      phoneNumber: phoneNumber,
      firstName: firstName,
      lastName: lastName,
      addresses: addresses,
    );
    objectBox.contactBox.put(newContact);
  }

  @override
  void addContacts(List<ContactLocalDTO> contacts) {
    objectBox.contactBox.putMany(contacts);
  }

  @override
  void deleteContact(ContactLocalDTO contact) {
    objectBox.contactBox.remove(contact.id);
  }
}
