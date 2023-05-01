import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import '../../../domain/modules/contacts/usecases/add_new_contact_usecase.dart';
import '../../../domain/modules/contacts/usecases/delete_contact_usecase.dart';
import '../../../domain/modules/contacts/usecases/get_all_contacts_usecase.dart';
import '../../../domain/modules/contacts/usecases/initialize_contacts_usecase.dart';
import '../../../domain/modules/contacts/usecases/update_contact_usecase.dart';
import 'contacts_events.dart';
import 'contacts_state.dart';

class ContactsBloc extends Bloc<ContactsEvent, ContactsState> {
  final _initializeContactsUsecase = GetIt.instance.get<InitializeContactsUsecase>();
  final _addNewContactUsecase = GetIt.instance.get<AddNewContactUsecase>();
  final _deleteContactUsecase = GetIt.instance.get<DeleteContactUsecase>();
  final _getAllContactsUsecase = GetIt.instance.get<GetAllContactsUsecase>();
  final _updateContactUsecase = GetIt.instance.get<UpdateContactUsecase>();

  ContactsBloc() : super(ContactsLoaded([])) {
    _handleEvents();
    add(InitContacts());
  }

  void _handleEvents() {
    on<InitContacts>(_handleInitContacts);
    on<PopulateContacts>(_handlePopulateContacts);
    on<AddNewContact>(_handleAddNewContact);
    on<UpdateContact>(_handleUpdateContact);
    on<DeleteContact>(_handleDeleteContact);
  }

  Future<void> _handleInitContacts(event, emit) async {
    emit(Loading(state.contacts));
    var response = _getAllContactsUsecase.call();
    response.fold(
      (l) => emit(Error(state.contacts, l)),
      (r) => emit(ContactsLoaded(r)),
    );
  }

  Future<void> _handlePopulateContacts(event, emit) async {
    emit(Loading(state.contacts));
    await _initializeContactsUsecase.call();
    var response = _getAllContactsUsecase.call();
    response.fold(
      (l) => emit(Error(state.contacts, l)),
      (r) => emit(ContactsLoaded(r)),
    );
  }

  void _handleAddNewContact(event, emit) {
    emit(Loading(state.contacts));

    _addNewContactUsecase.call(
      AddNewContactParams(
        phoneNumber: event.phoneNumber,
        firstName: event.firstName,
        lastName: event.lastName,
        streetAddress1: event.streetAddress1,
        streetAddress2: event.streetAddress2,
        city: event.city,
        state: event.state,
        zipCode: event.zipCode,
      ),
    );
    var response = _getAllContactsUsecase.call();
    response.fold(
      (l) => emit(Error(state.contacts, l)),
      (r) => emit(ContactsLoaded(r)),
    );
  }

  void _handleUpdateContact(event, emit) {
    emit(Loading(state.contacts));
    _updateContactUsecase.call(UpdateContactParams(contact: event.contact));
    var response = _getAllContactsUsecase.call();
    response.fold(
      (l) => emit(Error(state.contacts, l)),
      (r) => emit(ContactsLoaded(r)),
    );
  }

  void _handleDeleteContact(event, emit) {
    emit(Loading(state.contacts));
    _deleteContactUsecase.call(DeleteContactParams(contact: event.contact));
    var response = _getAllContactsUsecase.call();
    response.fold(
      (l) => emit(Error(state.contacts, l)),
      (r) => emit(ContactsLoaded(r)),
    );
  }
}
