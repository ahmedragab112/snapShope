import 'package:newstore/core/cache/objectbox_entity.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

import '../../objectbox.g.dart';

class ObjectBoxManager {
  late final Store store;
  late final Box<Preferences> preferencesBox;

  ObjectBoxManager._create(this.store) {
    preferencesBox = store.box<Preferences>();
  }

  static Future<ObjectBoxManager> create() async {
    final docsDir = await getApplicationDocumentsDirectory();

    final store =
        await openStore(directory: p.join(docsDir.path, "obx-example"));
    return ObjectBoxManager._create(store);
  }

  void close() {
    store.close();
  }
}
