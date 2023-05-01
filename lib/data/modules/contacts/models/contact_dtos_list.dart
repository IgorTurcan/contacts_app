part of contact_library;

@freezed
class ContactsListLocalDTO with _$ContactsListLocalDTO {
  const factory ContactsListLocalDTO({
    required List<ContactLocalDTO> list,
  }) = _ContactsListLocalDTO;

  factory ContactsListLocalDTO.fromJson(Map<String, dynamic> json) => _$ContactsListLocalDTOFromJson(json);
}
