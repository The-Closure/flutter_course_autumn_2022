import 'package:flutter_course_autumn_2022/services/auth_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;

void main() {
  test('succeed sign in', () async {
    AuthService authService = AuthService(http.Client());
    expect(await authService.signIn('admin', 'admin'), isA<String>());
  });
  test('sign in bad credentials', () {
    AuthService authService = AuthService(http.Client());
    expect(authService.signIn('admin', 'user'), throwsA(isA<Exception>()));
  });
}
