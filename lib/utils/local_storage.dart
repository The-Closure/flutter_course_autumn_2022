import 'package:shared_preferences/shared_preferences.dart';

saveToken(String value) {
  SharedPreferences.getInstance()
      .then((pref) => pref.setString('TOKEN', value));
}

Future<String?> read(String key) {
  return SharedPreferences.getInstance()
      .then((pref) => pref.getString(key));
}
