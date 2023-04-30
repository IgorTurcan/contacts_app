import 'package:contacts_app/data_sources/object_box.dart';
import 'package:contacts_app/models/generated/index.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'contacts_events.dart';

class ContactsBloc extends Bloc<ContactsEvent, List<Contact>> {
  ObjectBox? _objectBox;

  Future<void> _initialize() async {
    _objectBox = await ObjectBox.create();
    add(AddContacts(_objectBox!.getAllContacts()));
  }

  ContactsBloc() : super(const []) {
    _initialize();

    on<AddContacts>((event, emit) {
      emit(_objectBox?.getAllContacts() ?? []);
    });
    on<AddNewContact>((event, emit) {
      _objectBox?.addNewContact(
        firstName: event.firstName,
        lastName: event.lastName,
        streetAddress1: event.streetAddress1,
        streetAddress2: event.streetAddress2,
        city: event.city,
        state: event.state,
        zipCode: event.zipCode,
      );
      emit(_objectBox?.getAllContacts() ?? []);
    });
    on<DeleteContact>((event, emit) {
      _objectBox?.deleteContact(event.contact);
      emit(_objectBox?.getAllContacts() ?? []);
    });
  }
}
