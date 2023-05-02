import 'package:contacts_app/domain/modules/contacts/entities/index/index.dart';

abstract class ContactsEvent {}

class InitContacts extends ContactsEvent {}

class PopulateContacts extends ContactsEvent {}

class AddNewContact extends ContactsEvent {
  final String phoneNumber;
  final String firstName;
  final String? lastName;
  final List<AddressEntity> addresses;

  AddNewContact({
    required this.phoneNumber,
    required this.firstName,
    this.lastName,
    required this.addresses,
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
