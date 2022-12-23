import 'dart:convert';

import 'package:flutter_course_autumn_2022/services/auth_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/mockito.dart';

import 'auth_serivce_test_mock.mocks.dart';

@GenerateMocks([http.Client])
void main() {
  final http.Client mockClient = MockClient();
  test('mock sign in function', () async {
    AuthService authService = AuthService(mockClient);
    Map<String, String> headers = {
      'Content-Type': 'application/json',
      'Accept': '*/*'
    };
    final body = jsonEncode(
        {'username': 'admin', 'password': 'admin', 'rememberMe': true});
    when(
      mockClient.post(Uri.parse('http://localhost:8080/api/authenticate'),
          body: body, headers: headers),
    ).thenAnswer((_) async => http.Response(
        '{"id_token": "eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJhZG1pbiIsImF1dGgiOiJST0xFX0FETUlOLFJPTEVfVVNFUiIsImV4cCI6MTY3MzI3NDY5MH0.-0BZEX1-vcSSuiiYi9-sz9Fzlyawt7NioboNZQUQgM_iy0W_7q0QMIdQrdFaVjbD2sVVoJAXylHwekVKRmhUyg"}',
        200));

    expect(await authService.signIn('admin', 'admin'), isA<String>());
  });
}
