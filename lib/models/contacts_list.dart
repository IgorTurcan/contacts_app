part of contact_library;

@freezed
class ContactsList with _$ContactsList {
  const factory ContactsList({
    required List<Contact> list,
  }) = _ContactsList;

  factory ContactsList.fromJson(Map<String, dynamic> json) => _$ContactsListFromJson(json);
}
