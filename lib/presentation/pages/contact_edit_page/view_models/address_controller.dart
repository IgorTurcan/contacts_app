import 'package:contacts_app/domain/modules/contacts/entities/index/index.dart';
import 'package:flutter/cupertino.dart';

class AddressController {
  late final TextEditingController streetAddress1Controller;
  late final TextEditingController streetAddress2Controller;
  late final TextEditingController cityController;
  late final TextEditingController stateController;
  late final TextEditingController zipCodeController;

  AddressController(AddressEntity? address) {
    streetAddress1Controller = TextEditingController(text: address?.streetAddress1);
    streetAddress2Controller = TextEditingController(text: address?.streetAddress2);
    cityController = TextEditingController(text: address?.city);
    stateController = TextEditingController(text: address?.state);
    zipCodeController = TextEditingController(text: address?.zipCode);
  }

  AddressEntity get address => AddressEntity(
        streetAddress1: streetAddress1Controller.text,
        streetAddress2: streetAddress2Controller.text,
        city: cityController.text,
        state: stateController.text,
        zipCode: zipCodeController.text,
      );

  bool get isNotEmpty =>
      streetAddress1Controller.text.isNotEmpty ||
      streetAddress2Controller.text.isNotEmpty ||
      cityController.text.isNotEmpty ||
      stateController.text.isNotEmpty ||
      zipCodeController.text.isNotEmpty;
}
