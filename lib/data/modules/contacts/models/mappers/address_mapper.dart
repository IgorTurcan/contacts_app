import '../../../../../domain/modules/contacts/entities/index/index.dart';
import '../index/index.dart';

class AddressMapper {
  static AddressEntity mapLocalDTOToEntity(AddressLocalDTO input) {
    return AddressEntity(
      streetAddress1: input.streetAddress1,
      streetAddress2: input.streetAddress2,
      city: input.city,
      state: input.state,
      zipCode: input.zipCode,
    );
  }

  static AddressLocalDTO mapEntityToLocalDTO(AddressEntity input) {
    return AddressLocalDTO(
      streetAddress1: input.streetAddress1,
      streetAddress2: input.streetAddress2,
      city: input.city,
      state: input.state,
      zipCode: input.zipCode,
    );
  }
}
