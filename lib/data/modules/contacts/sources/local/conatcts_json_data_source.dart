import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

import '../../models/index/index.dart';

abstract class ContactsJSONDataSource {
  Future<List<ContactLocalDTO>> getContacts();
}

class ContactsJSONDataSourceImpl implements ContactsJSONDataSource {
  static const String _assetsPath = 'assets/data.json';

  @override
  Future<List<ContactLocalDTO>> getContacts() async {
    var jsonData = await rootBundle.loadString(_assetsPath);
    return ContactsListLocalDTO.fromJson({'list': jsonDecode(jsonData)}).list;
  }
}
