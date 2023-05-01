part of contact_library;

@freezed
class ContactLocalDTO with _$ContactLocalDTO {
  factory ContactLocalDTO({
    required int contactID,
    required String firstName,
    String? lastName,
    String? streetAddress1,
    String? streetAddress2,
    String? city,
    String? state,
    String? zipCode,
  }) = _ContactLocalDTO;

  factory ContactLocalDTO.fromJson(Map<String, dynamic> json) => _$ContactLocalDTOFromJson(json);
}
