part of 'auth_bloc.dart';

@immutable
abstract class AuthState {}

class AuthInitial extends AuthState {}

class AuthLoading extends AuthState {}

class AuthSucceed extends AuthState {}

class AuthFailed implements AuthState {
  final String message;
  AuthFailed(this.message);
}
