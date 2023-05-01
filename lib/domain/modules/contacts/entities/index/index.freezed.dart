// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of contact_library;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ContactEntity {
  int get contactID => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String? get lastName => throw _privateConstructorUsedError;
  String? get streetAddress1 => throw _privateConstructorUsedError;
  String? get streetAddress2 => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get state => throw _privateConstructorUsedError;
  String? get zipCode => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ContactEntityCopyWith<ContactEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactEntityCopyWith<$Res> {
  factory $ContactEntityCopyWith(
          ContactEntity value, $Res Function(ContactEntity) then) =
      _$ContactEntityCopyWithImpl<$Res, ContactEntity>;
  @useResult
  $Res call(
      {int contactID,
      String phoneNumber,
      String firstName,
      String? lastName,
      String? streetAddress1,
      String? streetAddress2,
      String? city,
      String? state,
      String? zipCode});
}

/// @nodoc
class _$ContactEntityCopyWithImpl<$Res, $Val extends ContactEntity>
    implements $ContactEntityCopyWith<$Res> {
  _$ContactEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contactID = null,
    Object? phoneNumber = null,
    Object? firstName = null,
    Object? lastName = freezed,
    Object? streetAddress1 = freezed,
    Object? streetAddress2 = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? zipCode = freezed,
  }) {
    return _then(_value.copyWith(
      contactID: null == contactID
          ? _value.contactID
          : contactID // ignore: cast_nullable_to_non_nullable
              as int,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      streetAddress1: freezed == streetAddress1
          ? _value.streetAddress1
          : streetAddress1 // ignore: cast_nullable_to_non_nullable
              as String?,
      streetAddress2: freezed == streetAddress2
          ? _value.streetAddress2
          : streetAddress2 // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      zipCode: freezed == zipCode
          ? _value.zipCode
          : zipCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ContactEntityCopyWith<$Res>
    implements $ContactEntityCopyWith<$Res> {
  factory _$$_ContactEntityCopyWith(
          _$_ContactEntity value, $Res Function(_$_ContactEntity) then) =
      __$$_ContactEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int contactID,
      String phoneNumber,
      String firstName,
      String? lastName,
      String? streetAddress1,
      String? streetAddress2,
      String? city,
      String? state,
      String? zipCode});
}

/// @nodoc
class __$$_ContactEntityCopyWithImpl<$Res>
    extends _$ContactEntityCopyWithImpl<$Res, _$_ContactEntity>
    implements _$$_ContactEntityCopyWith<$Res> {
  __$$_ContactEntityCopyWithImpl(
      _$_ContactEntity _value, $Res Function(_$_ContactEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contactID = null,
    Object? phoneNumber = null,
    Object? firstName = null,
    Object? lastName = freezed,
    Object? streetAddress1 = freezed,
    Object? streetAddress2 = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? zipCode = freezed,
  }) {
    return _then(_$_ContactEntity(
      contactID: null == contactID
          ? _value.contactID
          : contactID // ignore: cast_nullable_to_non_nullable
              as int,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      streetAddress1: freezed == streetAddress1
          ? _value.streetAddress1
          : streetAddress1 // ignore: cast_nullable_to_non_nullable
              as String?,
      streetAddress2: freezed == streetAddress2
          ? _value.streetAddress2
          : streetAddress2 // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      zipCode: freezed == zipCode
          ? _value.zipCode
          : zipCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ContactEntity implements _ContactEntity {
  _$_ContactEntity(
      {required this.contactID,
      required this.phoneNumber,
      required this.firstName,
      this.lastName,
      this.streetAddress1,
      this.streetAddress2,
      this.city,
      this.state,
      this.zipCode});

  @override
  final int contactID;
  @override
  final String phoneNumber;
  @override
  final String firstName;
  @override
  final String? lastName;
  @override
  final String? streetAddress1;
  @override
  final String? streetAddress2;
  @override
  final String? city;
  @override
  final String? state;
  @override
  final String? zipCode;

  @override
  String toString() {
    return 'ContactEntity(contactID: $contactID, phoneNumber: $phoneNumber, firstName: $firstName, lastName: $lastName, streetAddress1: $streetAddress1, streetAddress2: $streetAddress2, city: $city, state: $state, zipCode: $zipCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ContactEntity &&
            (identical(other.contactID, contactID) ||
                other.contactID == contactID) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.streetAddress1, streetAddress1) ||
                other.streetAddress1 == streetAddress1) &&
            (identical(other.streetAddress2, streetAddress2) ||
                other.streetAddress2 == streetAddress2) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.zipCode, zipCode) || other.zipCode == zipCode));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      contactID,
      phoneNumber,
      firstName,
      lastName,
      streetAddress1,
      streetAddress2,
      city,
      state,
      zipCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ContactEntityCopyWith<_$_ContactEntity> get copyWith =>
      __$$_ContactEntityCopyWithImpl<_$_ContactEntity>(this, _$identity);
}

abstract class _ContactEntity implements ContactEntity {
  factory _ContactEntity(
      {required final int contactID,
      required final String phoneNumber,
      required final String firstName,
      final String? lastName,
      final String? streetAddress1,
      final String? streetAddress2,
      final String? city,
      final String? state,
      final String? zipCode}) = _$_ContactEntity;

  @override
  int get contactID;
  @override
  String get phoneNumber;
  @override
  String get firstName;
  @override
  String? get lastName;
  @override
  String? get streetAddress1;
  @override
  String? get streetAddress2;
  @override
  String? get city;
  @override
  String? get state;
  @override
  String? get zipCode;
  @override
  @JsonKey(ignore: true)
  _$$_ContactEntityCopyWith<_$_ContactEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
