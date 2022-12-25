import 'package:shared_preferences/shared_preferences.dart';

saveToken(String value) {
  SharedPreferences.getInstance()
      .then((pref) => pref.setString('TOKEN', value));
}

Future<String?> read(String key) {
  return SharedPreferences.getInstance().then((pref) => pref.getString(key));
}

Future<void> delete(String key) async {
  await SharedPreferences.getInstance().then((pref) => pref.remove(key));
  return;
}
