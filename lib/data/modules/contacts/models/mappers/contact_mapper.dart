import 'dart:convert';

import 'package:contacts_app/data/modules/contacts/models/index/index.dart';
import 'package:contacts_app/data/modules/contacts/models/mappers/address_mapper.dart';
import 'package:contacts_app/domain/modules/contacts/entities/index/index.dart';

class ContactMapper {
  static ContactEntity mapLocalDTOToEntity(ContactLocalDTO input) {
    var addressesLocalDTOs = AddressesListLocalDTO.fromJson({'list': jsonDecode(input.addresses ?? '[]')}).list;
    var addresses = addressesLocalDTOs.map(AddressMapper.mapLocalDTOToEntity).toList();

    return ContactEntity(
      id: input.id,
      phoneNumber: input.phoneNumber,
      firstName: input.firstName,
      lastName: input.lastName,
      addresses: addresses,
    );
  }

  static ContactLocalDTO mapEntityToLocalDTO(ContactEntity input) {
    var addressesLocalDTOs = input.addresses.map(AddressMapper.mapEntityToLocalDTO).toList();
    var addressesSerialized = jsonEncode(addressesLocalDTOs.map((el) => el.toJson()).toList());

    return ContactLocalDTO(
      id: input.id,
      phoneNumber: input.phoneNumber,
      firstName: input.firstName,
      lastName: input.lastName,
      addresses: addressesSerialized,
    );
  }
}
