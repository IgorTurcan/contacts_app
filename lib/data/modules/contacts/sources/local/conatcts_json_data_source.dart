import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

import '../../models/models/index/index.dart';

abstract class ContactsJSONDataSource {
  Future<List<Contact>> getContacts();
}

class ContactsJSONDataSourceImpl implements ContactsJSONDataSource {
  static const String _assetsPath = 'assets/data.json';

  @override
  Future<List<Contact>> getContacts() async {
    var jsonData = await rootBundle.loadString(_assetsPath);
    return ContactsList.fromJson({'list': jsonDecode(jsonData)}).list;
  }
}
