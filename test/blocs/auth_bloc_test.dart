import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_course_autumn_2022/blocs/auth_bloc/auth_bloc.dart';
import 'package:flutter_course_autumn_2022/services/auth_service.dart';
import 'package:mockito/mockito.dart';
import 'package:test/expect.dart';
import 'package:http/http.dart' as http;

void main() {
  AuthService authService = AuthService(http.Client());
  blocTest<AuthBloc, AuthState>(
    'succeed auth bloc',
    build: () => AuthBloc(authService),
    act: (bloc) => bloc.add(SigninEvent(username: 'admin', password: 'admin')),
    wait: const Duration(milliseconds: 300),
    expect: () => [isA<AuthLoading>(), isA<AuthSucceed>()],
  );

  blocTest<AuthBloc, AuthState>(
    'bad cred auth bloc.',
    build: () => AuthBloc(authService),
    act: (bloc) => bloc.add(SigninEvent(username: 'admin', password: 'ad')),
    wait: const Duration(milliseconds: 300),
    expect: () => [isA<AuthLoading>(), isA<AuthFailed>()],
  );
}