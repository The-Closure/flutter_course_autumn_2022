import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_course_autumn_2022/blocs/auth_bloc/auth_bloc.dart';
import 'package:flutter_course_autumn_2022/services/auth_service.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:test/expect.dart';

import 'auth_bloc_test.mocks.dart';

@GenerateMocks([AuthService])
void main() {
  final mockAuthService = MockAuthService();
  blocTest<AuthBloc, AuthState>(
    'succeed auth bloc',
    setUp: () {
      when(mockAuthService.signIn('admin', 'ad'))
          .thenAnswer((_) async => 'THIS_IS_A_TOKEN');
    },
    build: () => AuthBloc(mockAuthService),
    act: (bloc) => bloc.add(SigninEvent(username: 'admin', password: 'ad')),
    expect: () => [isA<AuthLoading>(), isA<AuthSucceed>()],
  );

  blocTest<AuthBloc, AuthState>(
    'bad cred auth bloc.',
    setUp: () {
      when(mockAuthService.signIn('admin', 'ad')).thenThrow(Exception(''));
    },
    build: () => AuthBloc(mockAuthService),
    act: (bloc) => bloc.add(SigninEvent(username: 'admin', password: 'ad')),
    expect: () => [isA<AuthLoading>(), isA<AuthFailed>()],
  );
}
