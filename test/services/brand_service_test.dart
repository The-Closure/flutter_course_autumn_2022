import 'package:flutter_course_autumn_2022/models/brand_data.dart';
import 'package:flutter_course_autumn_2022/services/auth_service.dart';
import 'package:flutter_course_autumn_2022/services/brand_service.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';
import 'package:http/http.dart' as http;

void main() {
  test(
    'test fetching all brands succeed',
    () async {
      String token = await AuthService(http.Client()).signIn('admin', 'admin');
      SharedPreferences.setMockInitialValues({'TOKEN': token});
      BrandService brandService = BrandService(http.Client());
      expect(await brandService.getAllBrands(), isA<List<BrandData>>());
    },
  );
}
