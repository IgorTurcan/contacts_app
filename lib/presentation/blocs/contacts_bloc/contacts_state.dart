import 'package:contacts_app/domain/core/failure.dart';

import '../../../domain/modules/contacts/entities/index/index.dart';

abstract class ContactsState {
  abstract final List<ContactEntity> contacts;
}

class Loading extends ContactsState {
  @override
  final List<ContactEntity> contacts;

  Loading(this.contacts);
}

class ContactsLoaded extends ContactsState {
  @override
  final List<ContactEntity> contacts;

  ContactsLoaded(this.contacts);
}

class Error extends ContactsState {
  @override
  final List<ContactEntity> contacts;
  final Failure failure;

  Error(this.contacts, this.failure);
}
