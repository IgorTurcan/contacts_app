import 'package:contacts_app/models/generated/index.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ContactDetailsCubit extends Cubit<Contact?> {
  ContactDetailsCubit() : super(null);

  void changeContact(Contact contact) {
    emit(contact);
  }
}
