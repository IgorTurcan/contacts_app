// GENERATED CODE - DO NOT MODIFY BY HAND
// This code was generated by ObjectBox. To update it run the generator again:
// With a Flutter package, run `flutter pub run build_runner build`.
// With a Dart package, run `dart run build_runner build`.
// See also https://docs.objectbox.io/getting-started#generate-objectbox-code

// ignore_for_file: camel_case_types, depend_on_referenced_packages
// coverage:ignore-file

import 'dart:typed_data';

import 'package:flat_buffers/flat_buffers.dart' as fb;
import 'package:objectbox/internal.dart'; // generated code can access "internal" functionality
import 'package:objectbox/objectbox.dart';
import 'package:objectbox_flutter_libs/objectbox_flutter_libs.dart';

import 'models/generated/index.dart';

export 'package:objectbox/objectbox.dart'; // so that callers only have to import this file

final _entities = <ModelEntity>[
  ModelEntity(
      id: const IdUid(1, 5592791365605061583),
      name: 'Contact',
      lastPropertyId: const IdUid(8, 6210020764045629536),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 2189666634114018873),
            name: 'contactID',
            type: 6,
            flags: 129),
        ModelProperty(
            id: const IdUid(2, 8530521181129975664),
            name: 'firstName',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(3, 8643657508675936288),
            name: 'lastName',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(4, 1936664703868259313),
            name: 'streetAddress1',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(5, 6228825615774509710),
            name: 'streetAddress2',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(6, 2106092497897951965),
            name: 'city',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(7, 286307510699960787),
            name: 'state',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(8, 6210020764045629536),
            name: 'zipCode',
            type: 9,
            flags: 0)
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[])
];

/// Open an ObjectBox store with the model declared in this file.
Future<Store> openStore(
        {String? directory,
        int? maxDBSizeInKB,
        int? fileMode,
        int? maxReaders,
        bool queriesCaseSensitiveDefault = true,
        String? macosApplicationGroup}) async =>
    Store(getObjectBoxModel(),
        directory: directory ?? (await defaultStoreDirectory()).path,
        maxDBSizeInKB: maxDBSizeInKB,
        fileMode: fileMode,
        maxReaders: maxReaders,
        queriesCaseSensitiveDefault: queriesCaseSensitiveDefault,
        macosApplicationGroup: macosApplicationGroup);

/// ObjectBox model definition, pass it to [Store] - Store(getObjectBoxModel())
ModelDefinition getObjectBoxModel() {
  final model = ModelInfo(
      entities: _entities,
      lastEntityId: const IdUid(1, 5592791365605061583),
      lastIndexId: const IdUid(0, 0),
      lastRelationId: const IdUid(0, 0),
      lastSequenceId: const IdUid(0, 0),
      retiredEntityUids: const [],
      retiredIndexUids: const [],
      retiredPropertyUids: const [],
      retiredRelationUids: const [],
      modelVersion: 5,
      modelVersionParserMinimum: 5,
      version: 1);

  final bindings = <Type, EntityDefinition>{
    Contact: EntityDefinition<Contact>(
        model: _entities[0],
        toOneRelations: (Contact object) => [],
        toManyRelations: (Contact object) => {},
        getId: (Contact object) => object.contactID,
        setId: (Contact object, int id) {
          if (object.contactID != id) {
            throw ArgumentError('Field Contact.contactID is read-only '
                '(final or getter-only) and it was declared to be self-assigned. '
                'However, the currently inserted object (.contactID=${object.contactID}) '
                "doesn't match the inserted ID (ID $id). "
                'You must assign an ID before calling [box.put()].');
          }
        },
        objectToFB: (Contact object, fb.Builder fbb) {
          final firstNameOffset = fbb.writeString(object.firstName);
          final lastNameOffset = object.lastName == null
              ? null
              : fbb.writeString(object.lastName!);
          final streetAddress1Offset = object.streetAddress1 == null
              ? null
              : fbb.writeString(object.streetAddress1!);
          final streetAddress2Offset = object.streetAddress2 == null
              ? null
              : fbb.writeString(object.streetAddress2!);
          final cityOffset =
              object.city == null ? null : fbb.writeString(object.city!);
          final stateOffset =
              object.state == null ? null : fbb.writeString(object.state!);
          final zipCodeOffset =
              object.zipCode == null ? null : fbb.writeString(object.zipCode!);
          fbb.startTable(9);
          fbb.addInt64(0, object.contactID);
          fbb.addOffset(1, firstNameOffset);
          fbb.addOffset(2, lastNameOffset);
          fbb.addOffset(3, streetAddress1Offset);
          fbb.addOffset(4, streetAddress2Offset);
          fbb.addOffset(5, cityOffset);
          fbb.addOffset(6, stateOffset);
          fbb.addOffset(7, zipCodeOffset);
          fbb.finish(fbb.endTable());
          return object.contactID;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);

          final object = Contact(
              contactID:
                  const fb.Int64Reader().vTableGet(buffer, rootOffset, 4, 0),
              firstName: const fb.StringReader(asciiOptimization: true)
                  .vTableGet(buffer, rootOffset, 6, ''),
              lastName: const fb.StringReader(asciiOptimization: true)
                  .vTableGetNullable(buffer, rootOffset, 8),
              streetAddress1: const fb.StringReader(asciiOptimization: true)
                  .vTableGetNullable(buffer, rootOffset, 10),
              streetAddress2: const fb.StringReader(asciiOptimization: true)
                  .vTableGetNullable(buffer, rootOffset, 12),
              city: const fb.StringReader(asciiOptimization: true)
                  .vTableGetNullable(buffer, rootOffset, 14),
              state: const fb.StringReader(asciiOptimization: true)
                  .vTableGetNullable(buffer, rootOffset, 16),
              zipCode: const fb.StringReader(asciiOptimization: true)
                  .vTableGetNullable(buffer, rootOffset, 18));

          return object;
        })
  };

  return ModelDefinition(model, bindings);
}

/// [Contact] entity fields to define ObjectBox queries.
class Contact_ {
  /// see [Contact.contactID]
  static final contactID =
      QueryIntegerProperty<Contact>(_entities[0].properties[0]);

  /// see [Contact.firstName]
  static final firstName =
      QueryStringProperty<Contact>(_entities[0].properties[1]);

  /// see [Contact.lastName]
  static final lastName =
      QueryStringProperty<Contact>(_entities[0].properties[2]);

  /// see [Contact.streetAddress1]
  static final streetAddress1 =
      QueryStringProperty<Contact>(_entities[0].properties[3]);

  /// see [Contact.streetAddress2]
  static final streetAddress2 =
      QueryStringProperty<Contact>(_entities[0].properties[4]);

  /// see [Contact.city]
  static final city = QueryStringProperty<Contact>(_entities[0].properties[5]);

  /// see [Contact.state]
  static final state = QueryStringProperty<Contact>(_entities[0].properties[6]);

  /// see [Contact.zipCode]
  static final zipCode =
      QueryStringProperty<Contact>(_entities[0].properties[7]);
}