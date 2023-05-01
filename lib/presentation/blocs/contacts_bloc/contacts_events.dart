import 'package:contacts_app/domain/modules/contacts/entities/index/index.dart';

abstract class ContactsEvent {}

class InitContacts extends ContactsEvent {}

class PopulateContacts extends ContactsEvent {}

class AddNewContact extends ContactsEvent {
  final String phoneNumber;
  final String firstName;
  final String? lastName;
  final String? streetAddress1;
  final String? streetAddress2;
  final String? city;
  final String? state;
  final String? zipCode;

  AddNewContact({
    required this.phoneNumber,
    required this.firstName,
    this.lastName,
    this.streetAddress1,
    this.streetAddress2,
    this.city,
    this.state,
    this.zipCode,
  });
}

class UpdateContact extends ContactsEvent {
  final ContactEntity contact;

  UpdateContact(this.contact);
}

class DeleteContact extends ContactsEvent {
  final ContactEntity contact;

  DeleteContact(this.contact);
}
