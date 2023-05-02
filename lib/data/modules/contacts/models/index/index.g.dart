// GENERATED CODE - DO NOT MODIFY BY HAND

part of contact_library;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddressLocalDTO _$AddressLocalDTOFromJson(Map<String, dynamic> json) =>
    AddressLocalDTO(
      streetAddress1: json['streetAddress1'] as String?,
      streetAddress2: json['streetAddress2'] as String?,
      city: json['city'] as String?,
      state: json['state'] as String?,
      zipCode: json['zipCode'] as String?,
    );

Map<String, dynamic> _$AddressLocalDTOToJson(AddressLocalDTO instance) =>
    <String, dynamic>{
      'streetAddress1': instance.streetAddress1,
      'streetAddress2': instance.streetAddress2,
      'city': instance.city,
      'state': instance.state,
      'zipCode': instance.zipCode,
    };

AddressesListLocalDTO _$AddressesListLocalDTOFromJson(
        Map<String, dynamic> json) =>
    AddressesListLocalDTO(
      list: (json['list'] as List<dynamic>)
          .map((e) => AddressLocalDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AddressesListLocalDTOToJson(
        AddressesListLocalDTO instance) =>
    <String, dynamic>{
      'list': instance.list,
    };

_$_ContactLocalDTO _$$_ContactLocalDTOFromJson(Map<String, dynamic> json) =>
    _$_ContactLocalDTO(
      id: json['id'] as int,
      phoneNumber: json['phoneNumber'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String?,
      addresses: _$JsonConverterFromJson<List<dynamic>, String>(
          json['addresses'], const AddressesConverter().fromJson),
    );

Map<String, dynamic> _$$_ContactLocalDTOToJson(_$_ContactLocalDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'phoneNumber': instance.phoneNumber,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'addresses': _$JsonConverterToJson<List<dynamic>, String>(
          instance.addresses, const AddressesConverter().toJson),
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);

_$_ContactsListLocalDTO _$$_ContactsListLocalDTOFromJson(
        Map<String, dynamic> json) =>
    _$_ContactsListLocalDTO(
      list: (json['list'] as List<dynamic>)
          .map((e) => ContactLocalDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ContactsListLocalDTOToJson(
        _$_ContactsListLocalDTO instance) =>
    <String, dynamic>{
      'list': instance.list,
    };
