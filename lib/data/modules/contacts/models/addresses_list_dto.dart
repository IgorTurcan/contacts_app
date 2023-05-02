part of contact_library;

@JsonSerializable()
class AddressesListLocalDTO {
  final List<AddressLocalDTO> list;

  AddressesListLocalDTO({required this.list});

  factory AddressesListLocalDTO.fromJson(Map<String, dynamic> json) => _$AddressesListLocalDTOFromJson(json);

  Map<String, dynamic> toJson() => _$AddressesListLocalDTOToJson(this);
}
