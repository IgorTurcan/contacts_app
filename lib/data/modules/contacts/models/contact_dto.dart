part of contact_library;

@freezed
class ContactLocalDTO with _$ContactLocalDTO {
  @Entity(realClass: ContactLocalDTO)
  factory ContactLocalDTO({
    @Id(assignable: true) required int contactID,
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
