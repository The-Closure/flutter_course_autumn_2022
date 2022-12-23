import 'package:bloc/bloc.dart';
import 'package:flutter_course_autumn_2022/first_page.dart';
import 'package:flutter_course_autumn_2022/services/auth_service.dart';
import 'package:meta/meta.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthService authService;
  AuthBloc(this.authService) : super(AuthInitial()) {
    on<SigninEvent>((event, emit) async {
      emit(AuthLoading());
      try {
        String token = await authService.signIn(event.username, event.password);
        //TODO : SAVE TOKEN IN LOCAL STORAGE
        emit(AuthSucceed());
      } on Exception catch (e) {
        emit(AuthFailed(e.toString().substring(e.toString().indexOf(':'))));
      }
    });
  }
}
