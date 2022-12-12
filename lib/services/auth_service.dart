import 'dart:convert';

import 'package:http/http.dart' as http;

class AuthService {
  http.Client client;
  AuthService(this.client);

  Future<String> signIn(String username, String password) async {
    final endpoint = Uri.parse('http://localhost:8080/api/authenticate');
    Map<String, String> headers = {
      'Content-Type': 'application/json',
      'Accept': '*/*'
    };
    final body = jsonEncode(
        {'username': username, 'password': password, 'rememberMe': true});
    http.Response response =
        await client.post(endpoint, body: body, headers: headers);
    if (response.statusCode == 200) {
      return jsonDecode(response.body)['id_token'];
    } else if (response.statusCode == 400) {
      throw Exception(jsonDecode(response.body)['title']);
    } else if (response.statusCode == 401) {
      throw Exception(jsonDecode(response.body)['detail']);
    } else {
      throw Exception('general failure');
    }
  }
}
