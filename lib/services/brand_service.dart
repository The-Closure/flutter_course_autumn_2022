import 'dart:convert';

import 'package:flutter_course_autumn_2022/models/brand_data.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_course_autumn_2022/utils/local_storage.dart' as ls;

class BrandService {
  http.Client client;
  BrandService(this.client);

  Future<List<BrandData>> getAllBrands([int page = 0, int size = 20]) async {
    String token = await ls.read('TOKEN') ?? '';
    final endpoint =
        Uri.parse('http://localhost:8080/api/brands?page=${page}&size=${size}');
    final headers = {
      'Accept': 'application/json',
      'Authorization': 'Bearer ${token}'
    };
    http.Response response = await http.get(endpoint, headers: headers);
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as List<dynamic>;
      return data.map((e) => BrandData.fromJson(e)).toList();
    } else {
      throw Exception('can not fetch data now please try again later');
    }
  }
}
