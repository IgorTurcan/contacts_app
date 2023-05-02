part of contact_library;

@JsonSerializable()
class AddressLocalDTO {
  final String? streetAddress1;
  final String? streetAddress2;
  final String? city;
  final String? state;
  final String? zipCode;

  AddressLocalDTO({this.streetAddress1, this.streetAddress2, this.city, this.state, this.zipCode});

  factory AddressLocalDTO.fromJson(Map<String, dynamic> json) => _$AddressLocalDTOFromJson(json);

  Map<String, dynamic> toJson() => _$AddressLocalDTOToJson(this);
}
