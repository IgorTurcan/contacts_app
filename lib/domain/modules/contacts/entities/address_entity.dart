part of contact_library;

@freezed
class AddressEntity with _$AddressEntity {
  factory AddressEntity({
    String? streetAddress1,
    String? streetAddress2,
    String? city,
    String? state,
    String? zipCode,
  }) = _AddressEntity;
}
