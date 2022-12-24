import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_course_autumn_2022/blocs/brand_bloc/brand_bloc.dart';
import 'package:flutter_course_autumn_2022/services/auth_service.dart';
import 'package:flutter_course_autumn_2022/services/brand_service.dart';

import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:test/expect.dart';

void main() {
  blocTest<BrandBloc, BrandState>(
    'emits [MyState] when MyEvent is added.',
    build: () => BrandBloc(BrandService(http.Client())),
    setUp: () async {
      String token = await AuthService(http.Client()).signIn('admin', 'admin');
      SharedPreferences.setMockInitialValues({'TOKEN': token});
    },
    act: (bloc) => bloc.add(FetchBrandsEvent()),
    wait: Duration(milliseconds: 500),
    expect: () => [isA<LoadingBrandsState>(), isA<SucceedBrandsState>()],
  );
}
