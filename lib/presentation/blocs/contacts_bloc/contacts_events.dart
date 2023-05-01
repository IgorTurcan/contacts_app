import '../../../../data/modules/contacts/models/models/index/index.dart';

abstract class ContactsEvent {}

class AddContacts extends ContactsEvent {
  final List<Contact> contacts;

  AddContacts(this.contacts);
}

class AddNewContact extends ContactsEvent {
  final String firstName;
  final String? lastName;
  final String? streetAddress1;
  final String? streetAddress2;
  final String? city;
  final String? state;
  final String? zipCode;

  AddNewContact({
    required this.firstName,
    this.lastName,
    this.streetAddress1,
    this.streetAddress2,
    this.city,
    this.state,
    this.zipCode,
  });
}

class DeleteContact extends ContactsEvent {
  final Contact contact;

  DeleteContact(this.contact);
}
