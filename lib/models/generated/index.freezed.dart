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

Contact _$ContactFromJson(Map<String, dynamic> json) {
  return _Contact.fromJson(json);
}

/// @nodoc
mixin _$Contact {
  @Id(assignable: true)
  String get contactID => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String? get lastName => throw _privateConstructorUsedError;
  String? get streetAddress1 => throw _privateConstructorUsedError;
  String? get streetAddress2 => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get state => throw _privateConstructorUsedError;
  String? get zipCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContactCopyWith<Contact> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactCopyWith<$Res> {
  factory $ContactCopyWith(Contact value, $Res Function(Contact) then) =
      _$ContactCopyWithImpl<$Res, Contact>;
  @useResult
  $Res call(
      {@Id(assignable: true) String contactID,
      String firstName,
      String? lastName,
      String? streetAddress1,
      String? streetAddress2,
      String? city,
      String? state,
      String? zipCode});
}

/// @nodoc
class _$ContactCopyWithImpl<$Res, $Val extends Contact>
    implements $ContactCopyWith<$Res> {
  _$ContactCopyWithImpl(this._value, this._then);

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
abstract class _$$_ContactCopyWith<$Res> implements $ContactCopyWith<$Res> {
  factory _$$_ContactCopyWith(
          _$_Contact value, $Res Function(_$_Contact) then) =
      __$$_ContactCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@Id(assignable: true) String contactID,
      String firstName,
      String? lastName,
      String? streetAddress1,
      String? streetAddress2,
      String? city,
      String? state,
      String? zipCode});
}

/// @nodoc
class __$$_ContactCopyWithImpl<$Res>
    extends _$ContactCopyWithImpl<$Res, _$_Contact>
    implements _$$_ContactCopyWith<$Res> {
  __$$_ContactCopyWithImpl(_$_Contact _value, $Res Function(_$_Contact) _then)
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
    return _then(_$_Contact(
      contactID: null == contactID
          ? _value.contactID
          : contactID // ignore: cast_nullable_to_non_nullable
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
@JsonSerializable()
@Entity(realClass: Contact)
class _$_Contact implements _Contact {
  _$_Contact(
      {@Id(assignable: true) required this.contactID,
      required this.firstName,
      this.lastName,
      this.streetAddress1,
      this.streetAddress2,
      this.city,
      this.state,
      this.zipCode});

  factory _$_Contact.fromJson(Map<String, dynamic> json) =>
      _$$_ContactFromJson(json);

  @override
  @Id(assignable: true)
  final String contactID;
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
    return 'Contact(contactID: $contactID, firstName: $firstName, lastName: $lastName, streetAddress1: $streetAddress1, streetAddress2: $streetAddress2, city: $city, state: $state, zipCode: $zipCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Contact &&
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
  _$$_ContactCopyWith<_$_Contact> get copyWith =>
      __$$_ContactCopyWithImpl<_$_Contact>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ContactToJson(
      this,
    );
  }
}

abstract class _Contact implements Contact {
  factory _Contact(
      {@Id(assignable: true) required final String contactID,
      required final String firstName,
      final String? lastName,
      final String? streetAddress1,
      final String? streetAddress2,
      final String? city,
      final String? state,
      final String? zipCode}) = _$_Contact;

  factory _Contact.fromJson(Map<String, dynamic> json) = _$_Contact.fromJson;

  @override
  @Id(assignable: true)
  String get contactID;
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
  _$$_ContactCopyWith<_$_Contact> get copyWith =>
      throw _privateConstructorUsedError;
}

ContactsList _$ContactsListFromJson(Map<String, dynamic> json) {
  return _ContactsList.fromJson(json);
}

/// @nodoc
mixin _$ContactsList {
  List<Contact> get list => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContactsListCopyWith<ContactsList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactsListCopyWith<$Res> {
  factory $ContactsListCopyWith(
          ContactsList value, $Res Function(ContactsList) then) =
      _$ContactsListCopyWithImpl<$Res, ContactsList>;
  @useResult
  $Res call({List<Contact> list});
}

/// @nodoc
class _$ContactsListCopyWithImpl<$Res, $Val extends ContactsList>
    implements $ContactsListCopyWith<$Res> {
  _$ContactsListCopyWithImpl(this._value, this._then);

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
              as List<Contact>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ContactsListCopyWith<$Res>
    implements $ContactsListCopyWith<$Res> {
  factory _$$_ContactsListCopyWith(
          _$_ContactsList value, $Res Function(_$_ContactsList) then) =
      __$$_ContactsListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Contact> list});
}

/// @nodoc
class __$$_ContactsListCopyWithImpl<$Res>
    extends _$ContactsListCopyWithImpl<$Res, _$_ContactsList>
    implements _$$_ContactsListCopyWith<$Res> {
  __$$_ContactsListCopyWithImpl(
      _$_ContactsList _value, $Res Function(_$_ContactsList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
  }) {
    return _then(_$_ContactsList(
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<Contact>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ContactsList implements _ContactsList {
  const _$_ContactsList({required final List<Contact> list}) : _list = list;

  factory _$_ContactsList.fromJson(Map<String, dynamic> json) =>
      _$$_ContactsListFromJson(json);

  final List<Contact> _list;
  @override
  List<Contact> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  String toString() {
    return 'ContactsList(list: $list)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ContactsList &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_list));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ContactsListCopyWith<_$_ContactsList> get copyWith =>
      __$$_ContactsListCopyWithImpl<_$_ContactsList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ContactsListToJson(
      this,
    );
  }
}

abstract class _ContactsList implements ContactsList {
  const factory _ContactsList({required final List<Contact> list}) =
      _$_ContactsList;

  factory _ContactsList.fromJson(Map<String, dynamic> json) =
      _$_ContactsList.fromJson;

  @override
  List<Contact> get list;
  @override
  @JsonKey(ignore: true)
  _$$_ContactsListCopyWith<_$_ContactsList> get copyWith =>
      throw _privateConstructorUsedError;
}