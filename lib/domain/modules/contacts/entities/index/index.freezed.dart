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
  int get id => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String? get lastName => throw _privateConstructorUsedError;
  List<AddressEntity> get addresses => throw _privateConstructorUsedError;

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
      {int id,
      String phoneNumber,
      String firstName,
      String? lastName,
      List<AddressEntity> addresses});
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
    Object? id = null,
    Object? phoneNumber = null,
    Object? firstName = null,
    Object? lastName = freezed,
    Object? addresses = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
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
      addresses: null == addresses
          ? _value.addresses
          : addresses // ignore: cast_nullable_to_non_nullable
              as List<AddressEntity>,
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
      {int id,
      String phoneNumber,
      String firstName,
      String? lastName,
      List<AddressEntity> addresses});
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
    Object? id = null,
    Object? phoneNumber = null,
    Object? firstName = null,
    Object? lastName = freezed,
    Object? addresses = null,
  }) {
    return _then(_$_ContactEntity(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
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
      addresses: null == addresses
          ? _value._addresses
          : addresses // ignore: cast_nullable_to_non_nullable
              as List<AddressEntity>,
    ));
  }
}

/// @nodoc

class _$_ContactEntity implements _ContactEntity {
  _$_ContactEntity(
      {required this.id,
      required this.phoneNumber,
      required this.firstName,
      this.lastName,
      required final List<AddressEntity> addresses})
      : _addresses = addresses;

  @override
  final int id;
  @override
  final String phoneNumber;
  @override
  final String firstName;
  @override
  final String? lastName;
  final List<AddressEntity> _addresses;
  @override
  List<AddressEntity> get addresses {
    if (_addresses is EqualUnmodifiableListView) return _addresses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_addresses);
  }

  @override
  String toString() {
    return 'ContactEntity(id: $id, phoneNumber: $phoneNumber, firstName: $firstName, lastName: $lastName, addresses: $addresses)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ContactEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            const DeepCollectionEquality()
                .equals(other._addresses, _addresses));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, phoneNumber, firstName,
      lastName, const DeepCollectionEquality().hash(_addresses));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ContactEntityCopyWith<_$_ContactEntity> get copyWith =>
      __$$_ContactEntityCopyWithImpl<_$_ContactEntity>(this, _$identity);
}

abstract class _ContactEntity implements ContactEntity {
  factory _ContactEntity(
      {required final int id,
      required final String phoneNumber,
      required final String firstName,
      final String? lastName,
      required final List<AddressEntity> addresses}) = _$_ContactEntity;

  @override
  int get id;
  @override
  String get phoneNumber;
  @override
  String get firstName;
  @override
  String? get lastName;
  @override
  List<AddressEntity> get addresses;
  @override
  @JsonKey(ignore: true)
  _$$_ContactEntityCopyWith<_$_ContactEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AddressEntity {
  String? get streetAddress1 => throw _privateConstructorUsedError;
  String? get streetAddress2 => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get state => throw _privateConstructorUsedError;
  String? get zipCode => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddressEntityCopyWith<AddressEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressEntityCopyWith<$Res> {
  factory $AddressEntityCopyWith(
          AddressEntity value, $Res Function(AddressEntity) then) =
      _$AddressEntityCopyWithImpl<$Res, AddressEntity>;
  @useResult
  $Res call(
      {String? streetAddress1,
      String? streetAddress2,
      String? city,
      String? state,
      String? zipCode});
}

/// @nodoc
class _$AddressEntityCopyWithImpl<$Res, $Val extends AddressEntity>
    implements $AddressEntityCopyWith<$Res> {
  _$AddressEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? streetAddress1 = freezed,
    Object? streetAddress2 = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? zipCode = freezed,
  }) {
    return _then(_value.copyWith(
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
abstract class _$$_AddressEntityCopyWith<$Res>
    implements $AddressEntityCopyWith<$Res> {
  factory _$$_AddressEntityCopyWith(
          _$_AddressEntity value, $Res Function(_$_AddressEntity) then) =
      __$$_AddressEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? streetAddress1,
      String? streetAddress2,
      String? city,
      String? state,
      String? zipCode});
}

/// @nodoc
class __$$_AddressEntityCopyWithImpl<$Res>
    extends _$AddressEntityCopyWithImpl<$Res, _$_AddressEntity>
    implements _$$_AddressEntityCopyWith<$Res> {
  __$$_AddressEntityCopyWithImpl(
      _$_AddressEntity _value, $Res Function(_$_AddressEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? streetAddress1 = freezed,
    Object? streetAddress2 = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? zipCode = freezed,
  }) {
    return _then(_$_AddressEntity(
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

class _$_AddressEntity implements _AddressEntity {
  _$_AddressEntity(
      {this.streetAddress1,
      this.streetAddress2,
      this.city,
      this.state,
      this.zipCode});

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
    return 'AddressEntity(streetAddress1: $streetAddress1, streetAddress2: $streetAddress2, city: $city, state: $state, zipCode: $zipCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddressEntity &&
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
      runtimeType, streetAddress1, streetAddress2, city, state, zipCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddressEntityCopyWith<_$_AddressEntity> get copyWith =>
      __$$_AddressEntityCopyWithImpl<_$_AddressEntity>(this, _$identity);
}

abstract class _AddressEntity implements AddressEntity {
  factory _AddressEntity(
      {final String? streetAddress1,
      final String? streetAddress2,
      final String? city,
      final String? state,
      final String? zipCode}) = _$_AddressEntity;

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
  _$$_AddressEntityCopyWith<_$_AddressEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
