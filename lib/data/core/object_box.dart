import '../modules/contacts/models/index/index.dart';
import 'objectbox.g.dart';

class ObjectBox {
  late final Store _store;

  late final Box<ContactLocalDTO> contactBox;

  ObjectBox._create(this._store) {
    contactBox = Box<ContactLocalDTO>(_store);
  }

  static Future<ObjectBox> create() async {
    final store = await openStore();
    return ObjectBox._create(store);
  }
}
