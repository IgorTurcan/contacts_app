import 'dart:math';
import 'package:contacts_app/data_sources/json_loader.dart';

import '../models/generated/index.dart';
import '../objectbox.g.dart';

class ObjectBox {
  late final Store _store;

  late final Box<Contact> _contactBox;

  int get _randomID => Random().nextInt(100000) + 1;

  ObjectBox._create(this._store) {
    _contactBox = Box<Contact>(_store);

    if (_contactBox.isEmpty()) {
      _putDemoContacts();
    }
  }

  static Future<ObjectBox> create() async {
    final store = await openStore();
    return ObjectBox._create(store);
  }

  void _putDemoContacts() async {
    var res = await JSONLoader.instance.getInitialContacts();
    _contactBox.putMany(res);
  }

  List<Contact> getAllContacts() {
    return _contactBox.getAll();
  }

  void updateContact(Contact contact) {
    bool removed = _contactBox.remove(contact.contactID);
    if (removed) {
      _contactBox.put(contact);
    }
  }

  void addContact({
    required String firstName,
    String? lastName,
    String? streetAddress1,
    String? streetAddress2,
    String? city,
    String? state,
    String? zipCode,
  }) {
    int newID = _randomID;
    while (_contactBox.contains(newID)) {
      newID = _randomID;
    }
    Contact newContact = Contact(
      contactID: newID,
      firstName: firstName,
      lastName: lastName,
      streetAddress1: streetAddress1,
      streetAddress2: streetAddress2,
      city: city,
      state: state,
      zipCode: zipCode,
    );
    _contactBox.put(newContact);
  }

  void deleteContact(Contact contact) {
    _contactBox.remove(contact.contactID);
  }
}
