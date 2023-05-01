part of contact_library;

@freezed
class ContactEntity with _$ContactEntity {

  @Entity(realClass: ContactEntity)
  factory ContactEntity({
    @Id(assignable: true) required int contactID,
    required String firstName,
    String? lastName,
    String? streetAddress1,
    String? streetAddress2,
    String? city,
    String? state,
    String? zipCode,
  }) = _ContactEntity;
}
