import '../modules/contacts/models/models/index/index.dart';
import '../../presentation/objectbox.g.dart';

class ObjectBox {
  late final Store _store;

  late final Box<Contact> contactBox;

  // int get _randomID => Random().nextInt(100000) + 1;

  ObjectBox() {
    ObjectBox.create();
  }

  ObjectBox._create(this._store) {
    contactBox = Box<Contact>(_store);

    // if (contactBox.isEmpty()) {
    //   _putDemoContacts();
    // }
  }

  // void _putDemoContacts() async {
  //   var res = await JSONLoader().getInitialContacts();
  //   contactBox.putMany(res);
  // }

  static Future<ObjectBox> create() async {
    final store = await openStore();
    return ObjectBox._create(store);
  }
}
