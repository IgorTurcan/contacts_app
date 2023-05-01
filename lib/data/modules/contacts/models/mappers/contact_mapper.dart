import 'package:contacts_app/data/modules/contacts/models/index/index.dart';
import 'package:contacts_app/domain/modules/contacts/entities/index/index.dart';

class ContactMapper {
  static ContactEntity mapLocalDTOToEntity(ContactLocalDTO input) {
    return ContactEntity(
      contactID: input.contactID,
      firstName: input.firstName,
      lastName: input.lastName,
      streetAddress1: input.streetAddress1,
      streetAddress2: input.streetAddress2,
      city: input.city,
      state: input.state,
      zipCode: input.zipCode,
    );
  }

  static ContactLocalDTO mapEntityToLocalDTO(ContactEntity input) {
    return ContactLocalDTO(
      contactID: input.contactID,
      firstName: input.firstName,
      lastName: input.lastName,
      streetAddress1: input.streetAddress1,
      streetAddress2: input.streetAddress2,
      city: input.city,
      state: input.state,
      zipCode: input.zipCode,
    );
  }
}
