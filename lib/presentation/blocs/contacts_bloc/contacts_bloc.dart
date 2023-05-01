import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import '../../../domain/modules/contacts/entities/index/index.dart';
import '../../../domain/modules/contacts/usecases/add_new_contact_usecase.dart';
import '../../../domain/modules/contacts/usecases/delete_contact_usecase.dart';
import '../../../domain/modules/contacts/usecases/get_all_contacts_usecase.dart';
import '../../../domain/modules/contacts/usecases/initialize_contacts_usecase.dart';
import '../../../domain/modules/contacts/usecases/update_contact_usecase.dart';
import 'contacts_events.dart';

class ContactsBloc extends Bloc<ContactsEvent, List<ContactEntity>> {
  final _initializeContactsUsecase = GetIt.instance.get<InitializeContactsUsecase>();
  final _addNewContactUsecase = GetIt.instance.get<AddNewContactUsecase>();
  final _deleteContactUsecase = GetIt.instance.get<DeleteContactUsecase>();
  final _getAllContactsUsecase = GetIt.instance.get<GetAllContactsUsecase>();
  final _updateContactUsecase = GetIt.instance.get<UpdateContactUsecase>();

  ContactsBloc() : super(const []) {
    _handleEvents();
    add(InitContacts());
  }

  void _handleEvents() {
    on<InitContacts>((event, emit) async {
      var contacts = _getAllContactsUsecase.call();
      emit(contacts);
    });
    on<PopulateContacts>((event, emit) async {
      await _initializeContactsUsecase.call();
      var contacts = _getAllContactsUsecase.call();
      emit(contacts);
    });
    on<AddNewContact>((event, emit) {
      _addNewContactUsecase.call(
        AddNewContactParams(
          firstName: event.firstName,
          lastName: event.lastName,
          streetAddress1: event.streetAddress1,
          streetAddress2: event.streetAddress2,
          city: event.city,
          state: event.state,
          zipCode: event.zipCode,
        ),
      );
      var contacts = _getAllContactsUsecase.call();
      emit(contacts);
    });
    on<UpdateContact>((event, emit) {
      _updateContactUsecase.call(UpdateContactParams(contact: event.contact));
      var contacts = _getAllContactsUsecase.call();
      emit(contacts);
    });
    on<DeleteContact>((event, emit) {
      _deleteContactUsecase.call(DeleteContactParams(contact: event.contact));
      var contacts = _getAllContactsUsecase.call();
      emit(contacts);
    });
  }
}
