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
  @Id(assignable: true)
  int get id => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String? get lastName => throw _privateConstructorUsedError;
  @AddressesConverter()
  String? get addresses => throw _privateConstructorUsedError;

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
      {@Id(assignable: true) int id,
      String phoneNumber,
      String firstName,
      String? lastName,
      @AddressesConverter() String? addresses});
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
    Object? id = null,
    Object? phoneNumber = null,
    Object? firstName = null,
    Object? lastName = freezed,
    Object? addresses = freezed,
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
      addresses: freezed == addresses
          ? _value.addresses
          : addresses // ignore: cast_nullable_to_non_nullable
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
      {@Id(assignable: true) int id,
      String phoneNumber,
      String firstName,
      String? lastName,
      @AddressesConverter() String? addresses});
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
    Object? id = null,
    Object? phoneNumber = null,
    Object? firstName = null,
    Object? lastName = freezed,
    Object? addresses = freezed,
  }) {
    return _then(_$_ContactLocalDTO(
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
      addresses: freezed == addresses
          ? _value.addresses
          : addresses // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
@Entity(realClass: ContactLocalDTO)
class _$_ContactLocalDTO implements _ContactLocalDTO {
  _$_ContactLocalDTO(
      {@Id(assignable: true) required this.id,
      required this.phoneNumber,
      required this.firstName,
      this.lastName,
      @AddressesConverter() this.addresses});

  factory _$_ContactLocalDTO.fromJson(Map<String, dynamic> json) =>
      _$$_ContactLocalDTOFromJson(json);

  @override
  @Id(assignable: true)
  final int id;
  @override
  final String phoneNumber;
  @override
  final String firstName;
  @override
  final String? lastName;
  @override
  @AddressesConverter()
  final String? addresses;

  @override
  String toString() {
    return 'ContactLocalDTO(id: $id, phoneNumber: $phoneNumber, firstName: $firstName, lastName: $lastName, addresses: $addresses)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ContactLocalDTO &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.addresses, addresses) ||
                other.addresses == addresses));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, phoneNumber, firstName, lastName, addresses);

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
      {@Id(assignable: true) required final int id,
      required final String phoneNumber,
      required final String firstName,
      final String? lastName,
      @AddressesConverter() final String? addresses}) = _$_ContactLocalDTO;

  factory _ContactLocalDTO.fromJson(Map<String, dynamic> json) =
      _$_ContactLocalDTO.fromJson;

  @override
  @Id(assignable: true)
  int get id;
  @override
  String get phoneNumber;
  @override
  String get firstName;
  @override
  String? get lastName;
  @override
  @AddressesConverter()
  String? get addresses;
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
