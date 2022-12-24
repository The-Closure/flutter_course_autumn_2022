import 'package:shared_preferences/shared_preferences.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';
import 'package:flutter_course_autumn_2022/utils/local_storage.dart' as ls;

void main() {
  test(
    'test saving value in the shared preferences',
    () async {
      SharedPreferences.setMockInitialValues({});
      ls.saveToken('TOKEN_VALUE');
      await Future.delayed(Duration(microseconds: 100));
      expect(await ls.read('TOKEN'), 'TOKEN_VALUE');
    },
  );
}
