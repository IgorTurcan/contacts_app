import 'dart:convert';

import 'package:contacts_app/models/generated/index.dart';
import 'package:flutter/services.dart' show rootBundle;

class JSONLoader {
  JSONLoader._();

  static final JSONLoader instance = JSONLoader._();

  static const String _assetsPath = 'assets/data.json';

  Future<List<Contact>> getInitialContacts() async {
    var jsonData = await rootBundle.loadString(_assetsPath);
    return ContactsList.fromJson({'list': jsonDecode(jsonData)}).list;
  }
}
