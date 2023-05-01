part of contact_library;

@freezed
class ContactEntity with _$ContactEntity {
  factory ContactEntity({
    required int contactID,
    required String phoneNumber,
    required String firstName,
    String? lastName,
    String? streetAddress1,
    String? streetAddress2,
    String? city,
    String? state,
    String? zipCode,
  }) = _ContactEntity;
}
