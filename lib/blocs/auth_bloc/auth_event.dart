part of 'auth_bloc.dart';

@immutable
abstract class AuthEvent {}

class SigninEvent extends AuthEvent {
  final String username;
  final String password;
  SigninEvent({required this.username, required this.password});
}
