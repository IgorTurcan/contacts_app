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

ContactLocalDTO _$ContactLocalDTOFromJson(Map<String, dynamic> json) {
  return _ContactLocalDTO.fromJson(json);
}

/// @nodoc
mixin _$ContactLocalDTO {
  int get contactID => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String? get lastName => throw _privateConstructorUsedError;
  String? get streetAddress1 => throw _privateConstructorUsedError;
  String? get streetAddress2 => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get state => throw _privateConstructorUsedError;
  String? get zipCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContactLocalDTOCopyWith<ContactLocalDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactLocalDTOCopyWith<$Res> {
  factory $ContactLocalDTOCopyWith(
          ContactLocalDTO value, $Res Function(ContactLocalDTO) then) =
      _$ContactLocalDTOCopyWithImpl<$Res, ContactLocalDTO>;
  @useResult
  $Res call(
      {int contactID,
      String firstName,
      String? lastName,
      String? streetAddress1,
      String? streetAddress2,
      String? city,
      String? state,
      String? zipCode});
}

/// @nodoc
class _$ContactLocalDTOCopyWithImpl<$Res, $Val extends ContactLocalDTO>
    implements $ContactLocalDTOCopyWith<$Res> {
  _$ContactLocalDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contactID = null,
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
abstract class _$$_ContactLocalDTOCopyWith<$Res>
    implements $ContactLocalDTOCopyWith<$Res> {
  factory _$$_ContactLocalDTOCopyWith(
          _$_ContactLocalDTO value, $Res Function(_$_ContactLocalDTO) then) =
      __$$_ContactLocalDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int contactID,
      String firstName,
      String? lastName,
      String? streetAddress1,
      String? streetAddress2,
      String? city,
      String? state,
      String? zipCode});
}

/// @nodoc
class __$$_ContactLocalDTOCopyWithImpl<$Res>
    extends _$ContactLocalDTOCopyWithImpl<$Res, _$_ContactLocalDTO>
    implements _$$_ContactLocalDTOCopyWith<$Res> {
  __$$_ContactLocalDTOCopyWithImpl(
      _$_ContactLocalDTO _value, $Res Function(_$_ContactLocalDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contactID = null,
    Object? firstName = null,
    Object? lastName = freezed,
    Object? streetAddress1 = freezed,
    Object? streetAddress2 = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? zipCode = freezed,
  }) {
    return _then(_$_ContactLocalDTO(
      contactID: null == contactID
          ? _value.contactID
          : contactID // ignore: cast_nullable_to_non_nullable
              as int,
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
@JsonSerializable()
class _$_ContactLocalDTO implements _ContactLocalDTO {
  _$_ContactLocalDTO(
      {required this.contactID,
      required this.firstName,
      this.lastName,
      this.streetAddress1,
      this.streetAddress2,
      this.city,
      this.state,
      this.zipCode});

  factory _$_ContactLocalDTO.fromJson(Map<String, dynamic> json) =>
      _$$_ContactLocalDTOFromJson(json);

  @override
  final int contactID;
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
    return 'ContactLocalDTO(contactID: $contactID, firstName: $firstName, lastName: $lastName, streetAddress1: $streetAddress1, streetAddress2: $streetAddress2, city: $city, state: $state, zipCode: $zipCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ContactLocalDTO &&
            (identical(other.contactID, contactID) ||
                other.contactID == contactID) &&
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

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, contactID, firstName, lastName,
      streetAddress1, streetAddress2, city, state, zipCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ContactLocalDTOCopyWith<_$_ContactLocalDTO> get copyWith =>
      __$$_ContactLocalDTOCopyWithImpl<_$_ContactLocalDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ContactLocalDTOToJson(
      this,
    );
  }
}

abstract class _ContactLocalDTO implements ContactLocalDTO {
  factory _ContactLocalDTO(
      {required final int contactID,
      required final String firstName,
      final String? lastName,
      final String? streetAddress1,
      final String? streetAddress2,
      final String? city,
      final String? state,
      final String? zipCode}) = _$_ContactLocalDTO;

  factory _ContactLocalDTO.fromJson(Map<String, dynamic> json) =
      _$_ContactLocalDTO.fromJson;

  @override
  int get contactID;
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
  _$$_ContactLocalDTOCopyWith<_$_ContactLocalDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

ContactsListLocalDTO _$ContactsListLocalDTOFromJson(Map<String, dynamic> json) {
  return _ContactsListLocalDTO.fromJson(json);
}

/// @nodoc
mixin _$ContactsListLocalDTO {
  List<ContactLocalDTO> get list => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContactsListLocalDTOCopyWith<ContactsListLocalDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactsListLocalDTOCopyWith<$Res> {
  factory $ContactsListLocalDTOCopyWith(ContactsListLocalDTO value,
          $Res Function(ContactsListLocalDTO) then) =
      _$ContactsListLocalDTOCopyWithImpl<$Res, ContactsListLocalDTO>;
  @useResult
  $Res call({List<ContactLocalDTO> list});
}

/// @nodoc
class _$ContactsListLocalDTOCopyWithImpl<$Res,
        $Val extends ContactsListLocalDTO>
    implements $ContactsListLocalDTOCopyWith<$Res> {
  _$ContactsListLocalDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
  }) {
    return _then(_value.copyWith(
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<ContactLocalDTO>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ContactsListLocalDTOCopyWith<$Res>
    implements $ContactsListLocalDTOCopyWith<$Res> {
  factory _$$_ContactsListLocalDTOCopyWith(_$_ContactsListLocalDTO value,
          $Res Function(_$_ContactsListLocalDTO) then) =
      __$$_ContactsListLocalDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ContactLocalDTO> list});
}

/// @nodoc
class __$$_ContactsListLocalDTOCopyWithImpl<$Res>
    extends _$ContactsListLocalDTOCopyWithImpl<$Res, _$_ContactsListLocalDTO>
    implements _$$_ContactsListLocalDTOCopyWith<$Res> {
  __$$_ContactsListLocalDTOCopyWithImpl(_$_ContactsListLocalDTO _value,
      $Res Function(_$_ContactsListLocalDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
  }) {
    return _then(_$_ContactsListLocalDTO(
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<ContactLocalDTO>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ContactsListLocalDTO implements _ContactsListLocalDTO {
  const _$_ContactsListLocalDTO({required final List<ContactLocalDTO> list})
      : _list = list;

  factory _$_ContactsListLocalDTO.fromJson(Map<String, dynamic> json) =>
      _$$_ContactsListLocalDTOFromJson(json);

  final List<ContactLocalDTO> _list;
  @override
  List<ContactLocalDTO> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  String toString() {
    return 'ContactsListLocalDTO(list: $list)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ContactsListLocalDTO &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_list));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ContactsListLocalDTOCopyWith<_$_ContactsListLocalDTO> get copyWith =>
      __$$_ContactsListLocalDTOCopyWithImpl<_$_ContactsListLocalDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ContactsListLocalDTOToJson(
      this,
    );
  }
}

abstract class _ContactsListLocalDTO implements ContactsListLocalDTO {
  const factory _ContactsListLocalDTO(
      {required final List<ContactLocalDTO> list}) = _$_ContactsListLocalDTO;

  factory _ContactsListLocalDTO.fromJson(Map<String, dynamic> json) =
      _$_ContactsListLocalDTO.fromJson;

  @override
  List<ContactLocalDTO> get list;
  @override
  @JsonKey(ignore: true)
  _$$_ContactsListLocalDTOCopyWith<_$_ContactsListLocalDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
