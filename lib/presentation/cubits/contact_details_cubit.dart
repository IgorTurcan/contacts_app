import 'package:contacts_app/domain/modules/contacts/entities/index/index.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ContactDetailsCubit extends Cubit<ContactEntity?> {
  ContactDetailsCubit() : super(null);

  void changeContact(ContactEntity? contact) {
    emit(contact);
  }
}
