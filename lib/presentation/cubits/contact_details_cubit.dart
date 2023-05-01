import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/modules/contacts/models/models/index/index.dart';

class ContactDetailsCubit extends Cubit<Contact?> {
  ContactDetailsCubit() : super(null);

  void changeContact(Contact contact) {
    emit(contact);
  }
}
