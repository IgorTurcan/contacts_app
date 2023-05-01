// GENERATED CODE - DO NOT MODIFY BY HAND

part of contact_library;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ContactLocalDTO _$$_ContactLocalDTOFromJson(Map<String, dynamic> json) =>
    _$_ContactLocalDTO(
      contactID: json['contactID'] as int,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String?,
      streetAddress1: json['streetAddress1'] as String?,
      streetAddress2: json['streetAddress2'] as String?,
      city: json['city'] as String?,
      state: json['state'] as String?,
      zipCode: json['zipCode'] as String?,
    );

Map<String, dynamic> _$$_ContactLocalDTOToJson(_$_ContactLocalDTO instance) =>
    <String, dynamic>{
      'contactID': instance.contactID,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'streetAddress1': instance.streetAddress1,
      'streetAddress2': instance.streetAddress2,
      'city': instance.city,
      'state': instance.state,
      'zipCode': instance.zipCode,
    };

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
