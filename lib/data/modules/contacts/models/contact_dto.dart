part of contact_library;

@freezed
class ContactLocalDTO with _$ContactLocalDTO {
  @JsonSerializable(explicitToJson: true)
  @Entity(realClass: ContactLocalDTO)
  factory ContactLocalDTO({
    @Id(assignable: true) required int id,
    required String phoneNumber,
    required String firstName,
    String? lastName,
    @AddressesConverter() String? addresses,
  }) = _ContactLocalDTO;

  factory ContactLocalDTO.fromJson(Map<String, dynamic> json) => _$ContactLocalDTOFromJson(json);
}

class AddressesConverter implements JsonConverter<String, List<dynamic>> {
  const AddressesConverter();

  @override
  String fromJson(List<dynamic> data) => jsonEncode(data);

  @override
  List<dynamic> toJson(String data) => jsonDecode(data);
}
