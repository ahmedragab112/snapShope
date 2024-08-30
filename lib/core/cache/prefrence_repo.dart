import 'package:newstore/core/cache/objectbox_entity.dart';

import '../../objectbox.g.dart';

class PreferencesRepository {
  final Box<Preferences> _preferencesBox;

  PreferencesRepository(this._preferencesBox);

  // Create or Update Preferences
  void savePreferences(Preferences preferences) {
    _preferencesBox.put(preferences);
  }

  // Read Preferences by ID
  Preferences? getPreferences(int id) {
    return _preferencesBox.get(id);
  }

  // Get all Preferences (although you may only have one)
  List<Preferences> getAllPreferences() {
    return _preferencesBox.getAll();
  }

  // Delete Preferences by ID
  void deletePreferences(int id) {
    _preferencesBox.remove(id);
  }

  // Delete all Preferences (if needed)
  void deleteAllPreferences() {
    _preferencesBox.removeAll();
  }
}
