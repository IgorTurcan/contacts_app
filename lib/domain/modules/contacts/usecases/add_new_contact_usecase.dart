import '../repository/contacts_repository.dart';

class AddNewContactUsecase {
  final ContactsRepository repository;

  AddNewContactUsecase({required this.repository});

  void call(AddNewContactParams params) {
    repository.addNewContact(
      phoneNumber: params.phoneNumber,
      firstName: params.firstName,
      lastName: params.lastName,
      streetAddress1: params.streetAddress1,
      streetAddress2: params.streetAddress2,
      city: params.city,
      state: params.state,
      zipCode: params.zipCode,
    );
  }
}

class AddNewContactParams {
  final String phoneNumber;
  final String firstName;
  final String? lastName;
  final String? streetAddress1;
  final String? streetAddress2;
  final String? city;
  final String? state;
  final String? zipCode;

  AddNewContactParams({
    required this.phoneNumber,
    required this.firstName,
    required this.lastName,
    required this.streetAddress1,
    required this.streetAddress2,
    required this.city,
    required this.state,
    required this.zipCode,
  });
}
