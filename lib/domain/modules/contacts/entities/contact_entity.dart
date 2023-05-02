part of contact_library;

@freezed
class ContactEntity with _$ContactEntity {
  factory ContactEntity({
    required int id,
    required String phoneNumber,
    required String firstName,
    String? lastName,
    required List<AddressEntity> addresses,
  }) = _ContactEntity;
}
