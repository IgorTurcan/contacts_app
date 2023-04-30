part of contact_library;

@freezed
class Contact with _$Contact {
  @Entity(realClass: Contact)
  factory Contact({
    @Id(assignable: true) required int contactID,
    required String firstName,
    String? lastName,
    String? streetAddress1,
    String? streetAddress2,
    String? city,
    String? state,
    String? zipCode,
  }) = _Contact;

  factory Contact.fromJson(Map<String, dynamic> json) => _$ContactFromJson(json);
}
